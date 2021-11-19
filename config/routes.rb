Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/api/v1/users", to: "users#index"
  post "/api/v1/users/:user_id/notify", to: "users#create_notification"
  get "/api/v1/users/:user_id/notifications", to: "users#get_user_notification"
end
