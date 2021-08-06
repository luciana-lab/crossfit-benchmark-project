module GymsHelper
    def current_user_belongs_to_gym
        @gym.users.include?(current_user)
    end

    def helper_gym_users_link(user)
        link_to "#{user.first_name} #{user.last_name}", user_path(user), {class: "profile-gym-link"}
    end
end