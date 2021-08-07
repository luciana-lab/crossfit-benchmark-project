class WorkoutsController < ApplicationController
    before_action :find_workout, only: [:show, :edit, :update, :destroy]
    before_action :redirect_if_not_logged_in?, only: [:edit, :update, :destroy]

    def index
        if params[:category]
            #params[:category]
            #@workouts = Workout.where(category: params[:category])
            @workouts = Workout.category_nav_selector(params[:category])
        else
            @workouts = Workout.all
        end
        if params[:workout] && !params[:workout][:wod_group].blank?
            @workouts = Workout.wod_group_selector(params[:workout][:wod_group])
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
        if !@workout.scores.blank?
            redirect_to workouts_path
        end
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
        params.require(:workout).permit(:name, :wod_group, :category, :description, :about, :filter)
    end

    def find_workout
        @workout = Workout.find(params[:id]) rescue not_found
    end
end