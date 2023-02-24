class Countypub < ApplicationRecord
  belongs_to :publication
  belongs_to :county
end
