class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

  def after_sign_up_path_for(resource)
    user_path(current_user)
  end


  protected


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :introduction, :profile_image])
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

end
