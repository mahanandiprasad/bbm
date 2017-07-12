class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do 
    redirect_to root_path, notice: "Page doesn't exist"
  end
  
  protected 

  def configure_permitted_parameters
  	registration_params = [:business_name, :first_name, :last_name, :phone, :email, :password, :password_confirmation, address: [:address, :location]]
  	devise_parameter_sanitizer.for(:sign_up) { 
  		|u| u.permit(registration_params)
  	}
  end
  
end
