class ScoresController < ApplicationController
    before_action :redirect_if_not_logged_in?
    before_action :find_score, only: [:edit, :update, :destroy]

    def index
        if params[:workout_id] && @workout = Workout.find(params[:workout_id])
            # @scores = @workout.scores
            if @workout.nil?
                redirect_to workouts_path, alert: "Workout not found."
            else
                if @workout.category == "For time"
                @scores = Score.order_by_rx.order_by_result_time
                else
                     @scores = Score.order_by_result_reps
                end
            end
        else
            # if @workout.category == "For time"
                @scores = Score.order_by_rx_and_result
            # else
            #     @scores = Score.order_by_rx.order_by_result_reps
            # end
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

    def edit
    end

    def update
        if @score.update(score_params)
            redirect_to user_path(@score.user)
        else
            render :edit
        end
    end

    def destroy
        @score.destroy
        redirect_to user_path(@score.user)
    end

    private
    def score_params
        params.require(:score).permit(:user_id, :workout_id, :date, :rx, :result_time, :result_reps, :notes, :public)
    end

    def find_score
        @score = Score.find(params[:id])
    end

end