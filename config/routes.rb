Rails.application.routes.draw do
  root "welcome#home"
  get "test", to: "welcome#test"
  resources :movie_posters
end
