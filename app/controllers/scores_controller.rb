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

    def new
        @score = Score.new
    end

    def create
        @score = Score.new(score_params)
    end

    private
    def score_params
        params.require(:score).permit(:rx, :result, :date, :notes, :public)
    end

end