# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 
    if user.has_role? :admin
      can :manage, User
      can :read, Transaction
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :manage, :dashboard         # allow access to dashboard
    elsif user.has_role? :buyer
      can :manage, Buyers_stock
    elsif user.has_role? :broker
      can :manage, :all
      can :read, :all
    end
  end
end
