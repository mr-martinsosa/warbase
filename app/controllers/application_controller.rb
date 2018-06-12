class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :experience, :level, :hp, :atk, :def])
       devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
       devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :current_password, :remember_me])  
    end
end
