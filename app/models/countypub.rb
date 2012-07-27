class Countypub < ActiveRecord::Base
  attr_accessible :publication_id, :county_id
  belongs_to :publication
  belongs_to :county

end