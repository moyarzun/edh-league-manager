class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?
  
  private
    
    def after_sign_out_path_for(resource_or_scope)
      root_path
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id])
    end
end
