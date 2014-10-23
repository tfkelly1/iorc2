class RecordTable
  delegate :params, :h, :link_to, to: :@view


  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Record.count,
      iTotalDisplayRecords: count_records,
      aaData: data
    }
  end

private

  def data
    records.map do |record|
      [
        h(record.bird.sequence),
        h(record.bird.common),
        h(record.status.name),
        h(record.start_date.year),
        h(get_counties(record)),
        h(get_references(record))
      ]
    end
  end

  def records
    @records ||= fetch_records
  end

  def fetch_records
    if params[:iSortCol_0].to_i == 3
      records = Record.includes(:bird).includes(:status).order("#{sort_year} #{sort_direction}")
    else
      records = Record.includes(:bird).includes(:status).order("#{sort_column} #{sort_direction}")
    end
      
    records = records.page(page).per_page(per_page)
    
    if params[:sSearch_0].present?
      records = records.where("birds.sequence = :search0" , search0: "#{params[:sSearch_0]}")
    end
    if params[:sSearch_1].present?
      records = records.where("birds.common ilike :search1" , search1: "%#{params[:sSearch_1]}%")
    end
    if params[:sSearch_2].present?
      records = records.where("statuses.name ilike :search2" , search2: "#{params[:sSearch_2]}%")
    end
    if params[:sSearch_3].present?
      records = records.where("date_part('year',start_date) = :search3" , search3: "#{params[:sSearch_3]}")
    end

    if params[:sSearch_4].present?
      records = records.joins(:counties).where("counties.name ilike :search4" , search4: "%#{params[:sSearch_4]}%")
    end
    if params[:sSearch_5].present?
       records = records.joins(:references).where("\"references\".name ilike :search5" , search5: "%#{params[:sSearch_5]}%")
    end
    records.group("records.id,birds.id,statuses.id")
  end
  
  def count_records
    records = Record.includes(:bird).includes(:status)
    if params[:sSearch_0].present?
      records = records.where("birds.sequence = :search0" , search0: "#{params[:sSearch_0]}")
    end
    if params[:sSearch_1].present?
      records = records.where("birds.common ilike :search1" , search1: "%#{params[:sSearch_1]}%")
    end
    if params[:sSearch_2].present?
      records = records.where("statuses.name ilike :search2" , search2: "#{params[:sSearch_2]}")
    end
    if params[:sSearch_3].present?
      records = records.where("date_part('year',start_date) = :search3" , search3: "#{params[:sSearch_3]}")
    end
    if params[:sSearch_4].present?
      records = records.joins(:counties).where("counties.name ilike :search4" , search4: "%#{params[:sSearch_4]}%")
    end
    if params[:sSearch_5].present?
       records = records.joins(:references).where("\"references\".name ilike :search5" , search5: "%#{params[:sSearch_5]}%")
    end
    records.length
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[birds.sequence birds.common statuses.name]
    columns[params[:iSortCol_0].to_i]
  end

  
  def sort_year
    "date_part('year',start_date)"
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
  
  def get_counties(record)
    a = []
    record.counties.each { 
      |county| a.push(county.name)
    }
    a = a.join ";"
  end
  
  def get_references(record)
    a = []
    record.references.each { 
      |reference| a.push(reference.name)
    }
    a = a.join ";"
  end
end