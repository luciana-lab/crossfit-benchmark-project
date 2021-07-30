class UsersController < ApplicationController
    
    def new
        if params[:gym_id] && @gym = Gym.find(params[:gym_id])
            @user = User.new(gym_id: params[:gym_id]) # same as @user = @gym.users.build
        else
            @user = User.new
            @user.build_gym
        end
    end

    def create
        @user = User.new(user_params)
        if params[:gym_id]
            @gym = Gym.find(params[:gym_id])
        end
        if @user.save
            session[:session_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def edit

    end

    def update

    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :age, :height, :weight, :country, :gym_id, gym_attributes: [:name, :website, :address])
    end
end