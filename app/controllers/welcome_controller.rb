class WelcomeController < ApplicationController
    def index
        @workouts = Workout.search(params[:search])
    end

    private
    def workout_params
        params.require(:workout).permit(:name, :category, :description, :id, :search)
    end
end