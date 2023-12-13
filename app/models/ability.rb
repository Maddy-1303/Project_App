class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all  # Admin can manage all resources
    else
      can [:read, :create, :update, :destroy], Project, user_id: user.id   # Users can manage their own projects
    end
  end
end
