class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to homes_url, :alert => exception.message
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || homes_path
  end

  def after_sign_out_path_for(resource_name)
	  root_path
	end
end
