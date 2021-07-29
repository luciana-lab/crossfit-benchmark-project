class GymsController < ApplicationController
    def index
        @gyms = Gym.all
    end

    def show
        find_gym
    end

    def new
        @gym = Gym.new
    end

    def create
        @gym = Gym.new(gym_params)
        if @gym.save
            redirect_to gym_path(@gym)
        else
            render :new
        end
    end

    def edit
        find_gym
    end

    def update
        find_gym
        if @gym.update
            redirect_to gym_path(@gym)
        else
            render :edit
        end
    end

    private
    def gym_params
        params.require(:gym).permit(:name, :website, :address)
    end

    def find_gym
        @gym = Gym.find(params[:id])
    end
end