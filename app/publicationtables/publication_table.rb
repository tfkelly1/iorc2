class PublicationTable
  delegate :params, :h, :link_to, to: :@view


  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Publication.count,
      iTotalDisplayRecords: publications.total_entries,
      aaData: data
    }
  end

private

  def data
    publications.map do |publication|
      [
        h(publication.bird.sequence),
        h(publication.bird.common),
        h(publication.quantity),
        h(publication.start_date.month.to_s + '/' + publication.start_date.day.to_s),
        h(publication.start_date.year),
        h(get_counties(publication)),
        h(get_regions(publication)),
        h(get_references(publication))
      ]
    end
  end

  def publications
    @publications ||= fetch_publications
  end

  def fetch_publications
    if params[:iSortCol_0].to_i == 3
      publications = Publication.includes(:bird).order("#{sort_month} #{sort_direction}", "#{sort_day} #{sort_direction}")
    elsif params[:iSortCol_0].to_i == 4
      publications = Publication.includes(:bird).order("#{sort_year} #{sort_direction}")
    else
      publications = Publication.includes(:bird).order("#{sort_column} #{sort_direction}")
    end
      
    publications = publications.page(page).per_page(per_page)
    
    if params[:sSearch_0].present?
      publications = publications.where("birds.sequence = :search0" , search0: "#{params[:sSearch_0]}")
    end
    if params[:sSearch_1].present?
      publications = publications.where("birds.common ilike :search1" , search1: "%#{params[:sSearch_1]}%")
    end
    if params[:sSearch_2].present?
      publications = publications.where("quantity = :search2" , search2: "#{params[:sSearch_2]}")
    end
    if params[:sSearch_3].present?
      publications = publications.where("date_part('month',start_date) = :search4" , search4: "#{params[:sSearch_3]}")
    end
    if params[:sSearch_4].present?
      publications = publications.where("date_part('year',start_date) = :search4" , search4: "#{params[:sSearch_4]}")
    end
    if params[:sSearch_6].present?
      publications = publications.joins(:regions).where("regions.name ilike :search6" , search6: "%#{params[:sSearch_6]}%")
    end
    if params[:sSearch_5].present?
      publications = publications.joins(:counties).where("counties.name ilike :search5" , search5: "%#{params[:sSearch_5]}%")
    end
    publications.group("publications.id,birds.id")
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[birds.sequence birds.common quantity]
    columns[params[:iSortCol_0].to_i]
  end
  
  def sort_month
    "date_part('month',start_date)"
  end
  
  def sort_day
    "date_part('day',start_date)"
  end
  
  def sort_year
    "date_part('year',start_date)"
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
  
  def get_counties(publication)
    a = []
    publication.counties.each { 
      |county| a.push(county.name)
    }
    a = a.join ";"
  end
  
  def get_references(publication)
    a = []
    publication.references.each { 
      |reference| a.push(reference.name)
    }
    a = a.join ";"
  end
  
  def get_regions(publication)
    a = []
    publication.counties.each { 
      |county| a.push(county.region.name)
    }
    a = a.join ";"
  end
end