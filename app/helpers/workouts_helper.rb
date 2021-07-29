module WorkoutsHelper
    def workout_description(workout)
        w = workout.description.split(/[\,\:]/).map do |value|
           return content_tag(:div, value)
        end
        w.join(" ")
    end
end