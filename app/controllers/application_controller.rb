class ApplicationController < ActionController::Base

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  helper_method :current_order

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :lastname, :phone, :email, :password, :password_confirmation) }
        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:name, :lastname, :phone, :email, :password, :remember_me) }
    end


  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
