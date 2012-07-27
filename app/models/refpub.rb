class Refpub < ActiveRecord::Base
  attr_accessible :publication_id, :reference_id
  belongs_to :publication
  belongs_to :reference

end