class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	before_action :configure_permitted_parameters, if: :devise_controller?
	
	def configure_permitted_parameters
  		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :first_name, :last_name ) }
	end

  protect_from_forgery with: :exception
end
