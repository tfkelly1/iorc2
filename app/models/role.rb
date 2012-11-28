class Role < ActiveRecord::Base
  has_many :userroles
  has_many :users, :through => :userroles

end