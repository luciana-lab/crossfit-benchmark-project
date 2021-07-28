class ScoresController < ApplicationController
    def index
        if params[:workout_id]
            @workout = Workout.find_by(id: params[:workout_id])
            if @workout.nil?
                redirect_to workouts_path, alert: "Workout not found."
            else
                @scores = Score.all
            end
        else
            @scores = Score.all
        end
    end

end