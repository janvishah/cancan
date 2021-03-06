class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :om	niauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 # Setup accessible (or protected) attributes for your model

 attr_accessible :email, :password, :password_confirmation, :remember_me
 has_many :user_roles
 has_many :roles, through: :user_roles	
 #accepts_nested_attributes_for :user_roles
 
	def role?(role)
    return !!self.roles.find_by_name(role.to_s)
end
  validates_uniqueness_of :email
end
