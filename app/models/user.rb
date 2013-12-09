class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 # Setup accessible (or protected) attributes for your model
 # has_secure_password
 attr_accessible :email, :password, :password_confirmation, :remember_me
	
 # attr_accessible :email, :password, :password_confirmation
  validates_uniqueness_of :email
end
