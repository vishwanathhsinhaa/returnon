class Ability
  include CanCan::Ability

  def initialize(user)

        user ||= User.new #guest user (not logged in)

        if user.has_role? :admin
            can :manage, :all
        else
            can :read, :all
            if user.has_role?(:agent)
                can :create, Property        
                can :update, Property do |property|
                    property.try(:user)== user  
                end
            end
            if user.has_role?(:owner)
                can :create, Property        
                can :update, Property do |property|
                    property.try(:user)== user
                end
            end
        end   
  end
end
