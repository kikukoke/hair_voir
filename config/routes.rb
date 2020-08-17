Rails.application.routes.draw do
  get "/reservations/new", to: "reservations#new", as: "reservations_new"
  post "/reservations/create", to: "reservations#create", as: "reservations_create"

  get "/login", to: "sessions#login_form", as: "login_form"
  post "/login", to: "sessions#login", as: "login"
  post "/logout", to: "sessions#logout", as: "logout"
  

  
end


