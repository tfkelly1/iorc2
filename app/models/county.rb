class County < ActiveRecord::Base
  has_and_belongs_to_many :records
  
  def as_json(options={})
      { :name => self.name}
    end
end
