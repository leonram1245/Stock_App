class RegistrationsController < ApplicationController
    before_action :configure_sign_up_params, only: [:create]
    def create
        super
        resource.add_role(params[:user][:roles])
      end    
    
end
