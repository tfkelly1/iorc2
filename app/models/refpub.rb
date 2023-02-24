class Refpub < ApplicationRecord
  attr_accessible :publication_id, :reference_id
  belongs_to :publication
  belongs_to :reference

end