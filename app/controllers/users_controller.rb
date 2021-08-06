class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    
    def new
        @user = User.new
        @user.build_gym
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:session_id] = @user.id
            redirect_to user_path(@user)
        else
            @user.build_gym
            render :new
        end
    end

    def show
    end

    def edit
        @user.build_gym
    end

    def update
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        @user.destroy
        redirect_to root_path
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :age, :height, :weight, :country, :gym_id, gym_attributes: [:name, :website, :address])
    end

    def find_user
        @user = User.find(params[:id]) rescue not_found
    end
end