class WorkoutsController < ApplicationController
    before_action :find_workout, only: [:show, :edit, :update, :destroy]
    before_action :redirect_if_not_logged_in?, only: [:edit, :update, :destroy]

    def index
        @workouts = Workout.all
        if params[:workout] && !params[:workout][:category].blank?
            @workouts = Workout.category_selector(params[:workout][:category])
        end
    end

    def show
    end

    def new
        @workout = Workout.new
    end

    def create
        @workout = Workout.new(workout_params)
        if @workout.save
            redirect_to workout_path(@workout)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @workout.update
            redirect_to workout_path(@workout)
        else
            render :edit
        end
    end

    def destroy
        @workout.destroy
        redirect_to workouts_path
    end

    private
    def workout_params
        params.require(:workout).permit(:name, :group, :category, :description, :about)
    end

    def find_workout
        @workout = Workout.find(params[:id])
    end
end