class Role < ActiveRecord::Base
  has_many :userroles
  has_many :users, :through => :userroles
  track_who_does_it
end