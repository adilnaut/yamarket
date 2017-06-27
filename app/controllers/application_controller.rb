class ApplicationController < ActionController::Base
    
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  
  
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :lastname, :phone, :email, :password, :password_confirmation) }
        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:name, :lastname, :phone, :email, :password, :remember_me) }
    end
end
