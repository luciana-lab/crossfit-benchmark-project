class ScoresController < ApplicationController
    #before_action :redirect_if_not_logged_in?

    def index
        if params[:workout_id] && @workout = Workout.find(params[:workout_id])
            # @scores = @workout.scores
            if @workout.nil?
                redirect_to workouts_path, alert: "Workout not found."
            else
                @scores = Score.all
                @score = Score.new(workout_id: params[:workout_id]) # same as @score = @workout.scores.build
            end
        else
            @scores = Score.all
            @score = Score.new(workout_id: params[:workout_id])
        end
    end

    def new
        # @score = Score.new
    end

    def create
        @score = Score.new(score_params)
        if params[:workout_id]
            @workout = Workout.find(params[:workout_id])
        end
        if @score.save
            redirect_to workout_scores_path
        else
            render :new # not sure
        end
    end

    private
    def score_params
        params.require(:score).permit(:user_id, :workout_id, :date, :rx, :result_time, :result_reps, :notes, :public)
    end

end