module GymsHelper
    def current_user_belongs_to_gym
        @gym.users.find(current_user.id)
    end
end