# frozen_string_literal: true

class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new 
    if user.has_role? :admin
      can :manage, User
      can :read, Deal
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :manage, :dashboard         # allow access to dashboard
    elsif user.has_role? :buyer
      can :manage, Buyers_stock
      can :read, Buyers_stock
    elsif user.has_role? :broker
      can :manage, Stock
      can :read, Stock
    end
  end
end
