class  ConfirmationsController < Devise::ConfirmationsController
  before_action :authenticate_user!
  
  private

    def after_confirmation_path_for(resource_name,resource)
      sign_in(resource)
      if current_user.has_role? :admin
        rails_admin_path
      elsif current_user.has_role? :buyer
        buyer_stocks_path
      elsif current_user.has_role? :broker
        broker_stocks_path
    end
end
end