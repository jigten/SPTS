class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)
    if user.superadmin_role?
      can :manage, :all
    end
    if user.supervisor_role?
      can :manage, User
    end

  end
end