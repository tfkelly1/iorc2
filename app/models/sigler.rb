class Sigler < ActiveRecord::Base
  attr_accessible :record_id, :county_id
  belongs_to :record
  belongs_to :county

end