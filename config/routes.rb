Rails.application.routes.draw do
  root "welcome#home"
  resource :movies
  resource :sessions, only: [:create, :new, :destroy]
  get "/signup" => "users#new"
  post "/users" => "users#create"
end
