class WorkoutsController < ApplicationController
    def index
        @workouts = Workout.all
    end

    def show
        @workout = Workout.find_by(id: params[:id])
    end

    def new

    end

    def create

    end

end