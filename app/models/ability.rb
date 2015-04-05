class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :create, Post
      can [:update, :destroy], Post do |post|
        post.try(:user) == user
      end

      can :create, Comment
      can [:update, :destroy], Comment do |comment|
        comment.try(:user) == user
      end
    end
  end
end
