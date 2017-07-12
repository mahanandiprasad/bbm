class Ability
  include CanCan::Ability

  def initialize(user)

    if user.nil?
      can :read, :all
    elsif user.role? "admin"
        can :manage, :all
    else
        can :read, :all
    end
  end
end


# def initialize(user)
#     if user.role? == :admin
#       can :manage, :all
#     else
#       can :read, :all
#     end
#   end
# end

    # Define abilities for the passed in user here. For example:
    #
      # user ||= User.new # guest user (not logged in)
      # if user.admin? && user.super_admin?
      #   can :manage, :all
      # else
      #   # can :create, Category do |category|
      #   #         category.user = user.admin 
      #   #         category.user = user.super_admin
      #   #     end
      #   can :read, :all
      # end
      # if user.roles.include? Role.find_by_name('admin')