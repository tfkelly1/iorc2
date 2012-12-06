class User < ActiveRecord::Base
  include SentientUser
  
  has_many :userroles
  has_many :roles, :through => :userroles
  
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :timeoutable, :validatable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin 
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  
  track_who_does_it
  
  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end
end
