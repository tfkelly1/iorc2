class Refrecord < ApplicationRecord
  # attr_accessible :record_id, :reference_id
  belongs_to :record
  belongs_to :reference
end
