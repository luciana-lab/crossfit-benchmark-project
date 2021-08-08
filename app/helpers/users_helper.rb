module UsersHelper
    def helper_display_or_hide_email
        @user.email unless @user != current_user
    end

    def helper_edit_profile_link
        link_to "Edit Profile", edit_user_path(@user), class:"edit-score-btn" unless @user != current_user
    end

    def helper_delete_profile_link
        link_to "Delete Profile", user_path(@user), method: 'delete', class:"delete-score-btn" unless @user != current_user
    end
    
end