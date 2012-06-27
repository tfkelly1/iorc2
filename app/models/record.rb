class Record < ActiveRecord::Base
  belongs_to :status
  belongs_to :bird
  has_many :siglers
  has_many :counties, :through => :siglers
  attr_reader :author_tokens
  
  
  def as_json(options={})
      { :common => self.bird.common, :scientific => self.bird.scientific, :quantity => self.quantity, :status => self.status.name , :finders => self.finders,
        :start => self.start_date, :end => self.end_date, :agegender => self.age_gender, :year => self.start_date.strftime('%Y'), :counties => self.counties}
    end
    
    
    def county_tokens=(record_county_ids)
      self.county_ids = ids.split(",")
    end
end
