class County < ActiveRecord::Base
  attr_accessible :name
  has_many :siglers
  has_many :records, :through => :siglers

end
