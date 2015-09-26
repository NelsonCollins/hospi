class ApplicationController < ActionController::Base


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
	  
	 # before_filter :configure_permitted_parameters, if: :devise_controller?

  #   protected

  #       def configure_permitted_parameters
  #           devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:hospital_name, :email, :hospital_address,:hospital_phone,:hospital_reg_no, :password ) }
  #           devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :hospital_address,:hospital_phone,:hospital_reg_no, :email, :password, :current_password) }
  #       end
end
