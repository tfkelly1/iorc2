class Role < ApplicationRecord
  has_many :userroles
  has_many :users, :through => :userroles
  #track_who_does_it
end