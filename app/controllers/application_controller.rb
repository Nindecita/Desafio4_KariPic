class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
   protected
     def configure_permitted_parameters
         devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image])
         devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image])
     end
     def after_sign_in_path_for(resource)
         #ruta a la que va cuando se logea el usuario
         galleries_path
    end
end
