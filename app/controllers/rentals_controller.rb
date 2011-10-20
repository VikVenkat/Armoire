class RentalsController < ApplicationController


#invoked on POST
  def create
  # borrowed from bookie/hookups
  # Creating a rental is creating a listed garment. 
  # Another action is required to book.
	
	# First, if the user is not signed in, kick them out
    if !user_signed_in?
		flash[:notice] = "You have to sign in first!"
		redirect_to new_user_registration_path
	
	
		else		
		# Then, if this listing already exists for this user, kick them out
		# Each user only allowed to list one of each garment. 
		# In the future, potentially allow dupes.
		if Rental.where(:garment_id => params[:garment_id]).where(:user_id => current_user.id).present? 
			flash[:notice] = "You already rented this garment. You have it.!"
			redirect_to root_path


		# Only when the user is signed in can they rent a garment 
		else
			@rental = current_user.rentals.build(:garment_id => params[:garment_id])			
				if @rental.save
					flash[:notice] = "Added Listing."
					redirect_to root_path
				else
					flash[:notice] = "Unable to add Listing."
					redirect_to root_path
				end

			
			
		end	
	end
  end
  
  
  # DELETE /rentals/1
  # DELETE /rentals/1.xml
  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy

    respond_to do |format|
      format.html { redirect_to(rentals_url) }
      format.xml  { head :ok }
    end
  end
  
  
  
 #method put
 # def update
    # unless user_signed_in?
	#	flash[:notice] = "You have to sign in first!"
	#	redirect_to new_user_registration_path
    
	#else
		
	
    #end
 # end
 
  def comment
	  Rental.where(:user_id => params[:user_id], :garment_id => params[:garment_id]).update_attribute(:u,:c)
  end
end

#May not use this except in debugging.
  # GET /rentals
  # GET /rentals.xml
  def index
    @rentals = Rentall.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rentals }
    end
  end


end
