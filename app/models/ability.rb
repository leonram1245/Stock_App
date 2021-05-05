# frozen_string_literal: true

class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new 
    if user.has_role? :admin
      can :manage, PendingBrokerAccount, :broker_email_confirmed =>false
      can :manage, ApprovedBrokerAccount, :broker_email_confirmed => true
      can :read, BrokerStock
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :manage, :dashboard         # allow access to dashboard
    elsif user.has_role? :buyer
      can :manage, BuyersStock
      can :manage, BrokerStock
    elsif user.has_role? :broker
      can :manage, BrokerStock, :broker_email_confirmed =>true
    end
  end
end
