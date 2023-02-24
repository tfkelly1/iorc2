class Publication < ApplicationRecord 
  belongs_to :bird
  has_many :refpubs
  has_many :references, :through => :refpubs
  has_many :countypubs
  has_many :counties, :through => :countypubs
  has_many :regions, :through => :counties
  #track_who_does_it
end
