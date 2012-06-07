class Record < ActiveRecord::Base
  belongs_to :status
  belongs_to :bird
  has_and_belongs_to_many :counties
  
  
  def as_json(options={})
      { :common => self.bird.common, :scientific => self.bird.scientific, :quantity => self.quantity, :status => self.status.name , :finders => self.finders,
        :start => self.start_date, :end => self.end_date, :agegender => self.age_gender, :year => self.start_date.strftime('%Y'), :counties => self.counties}
    end
end
