class ScoresController < ApplicationController
    before_action :redirect_if_not_logged_in?

    def index
        if params[:workout_id] && @workout = Workout.find(params[:workout_id])
            # @scores = @workout.scores
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
        if params[:workout_id] && @workout = Workout.find(params[:workout_id])
            @score = @workout.scores.build # same as @score = Score.new(workout_id: params[:workout_id])
        else
            @score = Score.new
            @score.build_workout
        end
    end

    def create
        @score = Score.new(score_params)
        if params[:workout_id]
            @workout = Workout.find(params[:workout_id])
        end
        if @score.save
            redirect_to workout_scores_path
        else
            render :new
        end
    end

    private
    def score_params
        params.require(:score).permit(:user_id, :workout_id, :date, :rx, :result_time, :result_reps, :notes, :public)
    end

end