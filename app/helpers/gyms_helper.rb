module GymsHelper
    def current_user_belongs_to_gym
        @gym.users.include?(current_user)
    end
end