class UsersController < ApplicationController
    def index
        @users = User.all()
        render :json => @users
    end

    def create_notification
        begin
        @user = User.find_by(id: params["user_id"])
        notification = Notification.create!(content: params["content"], status: params["status"], user_id: @user.id)
        notification.save
        render :json => notification
        rescue
            render :json => {error: "User not found"}
        end
    end

    def get_user_notification
        begin
        @user = User.find_by(id: params["user_id"])
        render :json => @user.notifications
        rescue
            render :json => {error: "User not found"}
        end
    end
end
