class RegistrationsController < Devise::RegistrationsController
before_action :authenticate_user!
before_action :configure_sign_up_params, only: [:create]


    # POST /resource
    def create
      super
      resource.add_role(params[:user][:roles])
      if current_user.has_role? :buyer
        #logic here
      elsif current_user.has_role? :broker
        #logic here
      end
    end
  
    protected

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email,
                                                         :password,
                                                         :password_confirmation,
                                                         roles: []])         
    end
    
  end

 