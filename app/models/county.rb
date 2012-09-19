class County < ActiveRecord::Base
  attr_accessible :name,:region_id
  belongs_to :region
  has_many :siglers
  has_many :records, :through => :siglers

end
