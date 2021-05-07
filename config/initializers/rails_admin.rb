require "nested_form/engine" require "nested_form/builder_mixin"
RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  config.authorize_with :cancancan

  config.model User do 
    list do 
      field :email
      field :confirmation_token
      field :confirmed_at
      field :roles do
       searchable :name
       queryable :true
      end
      end
    show do
      field :email
      field :confirmation_token
      field :confirmed_at
      field :roles
    end
    edit do
      field :broker_email_confirmed do
        pretty_value do
         if bindings[:object].broker_email_confirmed==false
             %{<span style="color:blank;" >ON</span>}.html_safe
           else
             %{<span style="color:blank;" >OFF</span>}.html_safe
         end
       end
      end 
      field :password
      field :password_confirmation  
    end
  end

  config.model BrokerStock do 
    list do 
      field :id
      field :user 
      field :email do
        pretty_value do
          bindings[:object].user&.email
      end
    end
      field :ticker
      field :company
      field :price
      field :quantity
  end
    show do
      field :id
      field :user
      field :ticker
      field :company
      field :price
      field :quantity
    end
end

  config.model PendingBrokerAccount do
  label "Manage User Accounts" 
  list do
    field :email
    field :broker_email_confirmed
    field :roles do
     searchable :name
     queryable :true
    end
    end
  show do
    field :email
    field :broker_email_confirmed
    field :roles
  end
  edit do
    field :broker_email_confirmed do
      pretty_value do
       if bindings[:object].broker_email_confirmed==false
           %{<span style="color:blank;" >ON</span>}.html_safe
         else
           %{<span style="color:blank;" >OFF</span>}.html_safe
       end
     end
    end 
    field :password
    field :password_confirmation  
  end
end

config.model ApprovedBrokerAccount do
  list do
    field :email
    field :broker_email_confirmed
    field :roles do
     searchable :name
     queryable :true
    end
    end
  show do
    field :email
    field :broker_email_confirmed
    field :roles
  end
  edit do
    field :broker_email_confirmed do
      pretty_value do
       if bindings[:object].broker_email_confirmed==false
           %{<span style="color:blank;" >ON</span>}.html_safe
         else
           %{<span style="color:blank;" >OFF</span>}.html_safe
       end
     end
    end 
    field :password
    field :password_confirmation  
  end
end



  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    ## == Devise ==
  end
end
