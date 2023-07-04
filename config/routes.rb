Rails.application.routes.draw do
  resources :recipes, only: [:index, :create]
  # User
  post "/signup", to: "users#create"
  get "/me", to: "users#show"

  #  Sessions
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
