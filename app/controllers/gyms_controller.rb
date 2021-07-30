class GymsController < ApplicationController
    include GymsHelper
    #before_action :redirect_if_not_belong_to_gym, only: [:edit, :update, :destroy]

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
        if current_user
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

    def destroy
        find_gym.destroy
        redirect_to gyms_path
    end

    private
    def gym_params
        params.require(:gym).permit(:name, :website, :address)
    end

    def find_gym
        @gym = Gym.find(params[:id])
    end

    def redirect_if_not_belong_to_gym
        redirect_to gyms_path if !current_user_belongs_to_gym
    end

end