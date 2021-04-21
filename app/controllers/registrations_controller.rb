class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]

    # POST /resource
    def create
      super
      resource.add_role(params[:user][:roles])
    end
  
end