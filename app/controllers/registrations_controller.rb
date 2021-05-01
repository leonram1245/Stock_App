class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!
  before_action :configure_sign_up_params, only: [:create]


  # POST /resource
  def create
    super
    resource.add_role(params[:user][:roles])
  end
  
  protected

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email,
                                                         :password,
                                                         :password_confirmation,
                                                         roles: []])         
    end  
end

 