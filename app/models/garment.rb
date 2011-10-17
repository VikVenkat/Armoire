class Garment < ActiveRecord::Base
  has_many :rentals
  has_many  :users, :through => :rentals

  
  # Devise
	def self.editable_by(user)
	  if user.is_admin
		Garment.all
	  else
	    Garment.where :user_id => user.id
	  end
	  
	end
	

  def self.complete?
	if self.complete == true
	  return true
	else 
	  return false
	end
  end

end
