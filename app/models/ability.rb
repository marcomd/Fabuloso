class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
    user ||= User.new
    can :manage, :all if user.role? :admin
    alias_action :batch_action, :to => :update
    can :read, ActiveAdmin::Page, :name => "Dashboard"

    # ----- FABLE ----- #
    can :read, Fable                                if user.roles? :guest, :user, :editor
    if user.role? :editor
      can :create, Fable
      can [:update, :destroy], Fable, :user_id => user.id
    end

    # ----- COMMENT ----- #
    can :read, Comment                                if user.roles? :guest, :user, :editor
    if user.roles? :user, :editor
      can :create, Comment
      can [:update, :destroy], Comment do |comment|
        comment.user_id == user.id &&
          (comment.created_at.to_date - Date.today).to_i == 0 &&
          (Time.now - comment.created_at) < 600
      end
    end

    # ----- CHART ----- #
    can :read, Chart                                if user.roles? :guest, :user, :editor
  end
end
