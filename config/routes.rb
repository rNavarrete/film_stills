Rails.application.routes.draw do
  root "welcome#home"
  get "test", to: "welcome#test"
  resources :movies
  get "/signup" => "users#new"
  post "/users" => "users#create"
end
