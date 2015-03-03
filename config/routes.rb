Rails.application.routes.draw do
  root "welcome#home"
  resources :movies
  resources :sessions, only: [:create, :new, :destroy]
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/user_dashboard" => "pages#user_dashboard"
end
