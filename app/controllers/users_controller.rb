class UsersController < ApplicationController

    # Return all Users
    def index
        @users = User.all()
        render :json => @users
    end

    # Create Notification for User with user_id
    # Need "content" & "status" to create notification
    # Check if user Exist, if not send an error
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

    # Get User Notifications with user Id
    # Check if user Exist, if not send an error
    def get_user_notification
        begin
        @user = User.find_by(id: params["user_id"])
        render :json => @user.notifications
        rescue
            render :json => {error: "User not found"}
        end
    end
end
