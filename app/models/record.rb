class Record < ActiveRecord::Base
  belongs_to :status
  belongs_to :bird
  has_many :refrecords
  has_many :references, :through => :refrecords
  has_many :siglers
  has_many :counties, :through => :siglers
  attr_reader :author_tokens
  track_who_does_it
        
    def county_tokens=(record_county_ids)
      self.county_ids = ids.split(",")
    end
end
