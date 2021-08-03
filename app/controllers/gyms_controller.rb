class GymsController < ApplicationController
    include GymsHelper
    before_action :find_gym, only: [:join, :leave, :show, :edit, :update, :destroy]
    before_action :redirect_if_not_belong_to_gym, only: [:edit, :update, :destroy]
    before_action :redirect_if_not_logged_in?, only: [:new, :create]

    def index
        @gyms = Gym.all
    end

    def join
        current_user.update_attribute(:gym_id, @gym.id)
        redirect_to gym_path(@gym)
    end

    def leave
        current_user.update_attribute(:gym_id, nil)
        redirect_to gyms_path
    end

    def show
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
    end

    def update
        if @gym.update(gym_params)
            redirect_to gym_path(@gym)
        else
            render :edit
        end
    end

    def destroy
        @gym.destroy
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