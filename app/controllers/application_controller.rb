class ApplicationController < ActionController::Base
  protect_from_forgery
  
 
  
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || homes_path
  end  

  def after_sign_out_path_for(resource_name)
	  # logic here
	  root_path
	end
end
