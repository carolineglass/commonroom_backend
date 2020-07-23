class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def login
        @user = User.find_by(username: params[:username])
        if @user 
            render json: @user
        else
            render json: {error: "username does not exist"}
        end
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end
    
    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: @user 
        else
            render json: {errors: "username already exists"}
        end
    end 

    private 

    def user_params
        params.permit(:username, :first_name, :last_name, :age, :img, :from, :country_id, :bio, :answer)
    end

end
