module WorkoutsHelper
    # def workout_description(workout)
    #     w = workout.description.split(/[\,\:]/).map do |value|
    #        return content_tag(:div, value)
    #     end
    #     w.join(" ")
    # end

    def helper_edit_workout_link
        if logged_in? && @workout.scores.blank?
            link_to "Edit", edit_workout_path(@workout), class: "edit-score-btn"
        end
    end

    def helper_delete_workout_link
        if logged_in? && @workout.scores.blank?
            button_to "Delete", workout_path(@workout), method: :delete, data: { confirm: "Are you sure?" }, class: "delete-score-btn"
        end
    end


end