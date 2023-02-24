class Userrole < ApplicationRecord
  attr_accessor :user_id, :role_id
  belongs_to :user
  belongs_to :role

end