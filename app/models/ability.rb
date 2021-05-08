# frozen_string_literal: true

class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new 
    if user.has_role? :admin
      can :manage, User
      can :manage, Role
      can :read, BrokerStock
      can :read, BuyersStock
      can :access, :rails_admin          
      can :manage, :dashboard          
    elsif user.has_role? :buyer
      can :manage, BuyersStock
    elsif user.has_role? :broker
      can :manage, BrokerStock
      can :access, :rails_admin    
      can :manage, :dashboard 
    end
  end
end


