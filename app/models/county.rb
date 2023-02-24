class County < ApplicationRecord
  belongs_to :region
  has_many :siglers
  has_many :records, through: :siglers
  # track_who_does_it
end
