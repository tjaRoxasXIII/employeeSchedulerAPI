class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create

    end

    def index
        @users = User.all
        render json: @users
    end
end