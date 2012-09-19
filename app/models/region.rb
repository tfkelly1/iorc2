class Region < ActiveRecord::Base
  has_many :counties
  has_many :publications, :through => :counties
  has_many :records, :through => :counties
end
