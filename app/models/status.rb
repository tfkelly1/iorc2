class Status < ActiveRecord::Base
  has_many :records
  track_who_does_it
end
