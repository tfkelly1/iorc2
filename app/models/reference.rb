class Reference < ActiveRecord::Base
  has_many :refrecords
  has_many :records, :through => :refrecords
  has_many :refpubs
  has_many :publications, :through => :refpubs
  track_who_does_it
end
