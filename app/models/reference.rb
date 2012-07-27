class Reference < ActiveRecord::Base
  has_many :records
  has_many :refpubs
  has_many :publications, :through => :refpubs
end
