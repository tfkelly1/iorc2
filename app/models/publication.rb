class Publication < ActiveRecord::Base 
  belongs_to :bird
  has_many :refpubs
  has_many :references, :through => :refpubs
  has_many :countypubs
  has_many :counties, :through => :countypubs
  has_many :regions, :through => :counties
end
