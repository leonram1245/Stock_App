class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email,
                                                      :password])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email,
                                                       :password,
                                                       :password_confirmation],
                                                       role: [])
  end

  def after_sign_in_path_for(resource)
    if current_user.has_role? :admin
      dashboard_path
    elsif current_user.has_role? :buyer
      buyers_path
    elsif current_user.has_role? :broker
      brokers_path
    else
      root_path
    end
  end
end
