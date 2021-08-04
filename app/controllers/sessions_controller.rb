class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = "Login failed: invalid email or password"
            redirect_to login_path
        end
    end

    def omniauth
        user = User.from_omniauth(auth)
        if user.valid?
            session[:user_id] = user.id
            flash[:message] = "Successful Login!!"
            redirect_to user_path(user)
        else
            flash[:message] = "Oh no! Not Login :("
            redirect_to root_path
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end

    private
    def auth
        request.env['omniauth.auth']
    end
end