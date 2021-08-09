module GymsHelper
    
    def current_user_belongs_to_gym
        @gym.users.include?(current_user)
    end

    def helper_gym_users_link(user)
        link_to "#{user.first_name} #{user.last_name}", user_path(user), {class: "profile-gym-link"}
    end

    def helper_leave_join_gym_link
        if current_user_belongs_to_gym
            link_to "Leave", leave_gym_path(@gym), class: "leave-gym-btn"
        else
            link_to "Join", join_gym_path(@gym), class: "join-gym-btn"
        end
    end

    def helper_gym_website
        link_to "Website", "http://#{@gym.website}", {target: "_blank", class: "gym-ext-link"} unless @gym.website.blank?
    end

    def helper_gym_address
        "Address: #{@gym.address}" unless @gym.address.blank?
    end

end