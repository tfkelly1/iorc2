class Record < ActiveRecord::Base
  belongs_to :status
  belongs_to :bird
end
