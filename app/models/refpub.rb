class Refpub < ApplicationRecord
  belongs_to :publication
  belongs_to :reference
end
