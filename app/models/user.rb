class User < ActiveRecord::Base

  has_many :rentals
  has_many :garments, :through => :rentals
  #edit this - garments through listings
  
  
  def self.is_admin?
    if self.is_admin == true
		return true
	else
		return false
	end	
  end

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
