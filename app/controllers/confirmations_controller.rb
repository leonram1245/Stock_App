class  ConfirmationsController < Devise::ConfirmationsController
  before_action :authenticate_user!
  
  private

    def after_confirmation_path_for(resource_name,resource)
      sign_in(resource)
      if current_user.has_role? :admin
        rails_admin_path
      elsif current_user.has_role? :buyer
        buyers_stocks_path
      elsif current_user.has_role? :broker
        stocks_path
      else
        root_path
      end
    end
end