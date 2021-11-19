Rails.application.routes.draw do

  #Get all Users
  get "/api/v1/users", to: "users#index"

  #Post Notification to User with Id
  post "/api/v1/users/:user_id/notify", to: "users#create_notification"

  #Get All Notifications to User with Id
  get "/api/v1/users/:user_id/notifications", to: "users#get_user_notification"
end
