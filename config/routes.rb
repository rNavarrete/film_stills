Rails.application.routes.draw do
  root "movies#index"
  resources :movies
  resources :sessions, only: [:create, :new, :destroy]
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/user_dashboard" => "pages#user_dashboard"
end
