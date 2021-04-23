class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_in, keys: [:email,
                                                         :password])                                            
    end

    def after_sign_in_path_for(resource)
      if current_user.has_role? :admin
        rails_admin_path
      elsif current_user.has_role? :buyer
        deal_buyers_stocks_path(:deal_id)
      elsif current_user.has_role? :broker
        deal_stocks_path(:deal_id)
      else
        root_path
      end
    end
end



