Rails.application.routes.draw do
  get "/reservations/top/:day", to: "reservations#top", as: "reservations_top"
  post "/reservations/create", to: "reservations#create", as: "reservations_create"
  patch "/reservations/update/:id", to: "reservations#update", as: "reservations_update"
  post "/reservations/destroy/:id", to: "reservations#destroy", as: "reservations_destroy"
  post "/reservations/change_date/:way/:difference", to: "reservations#change_date", as: "reservations_change_date"
  post "/reservations/edit/:id", to: "reservations#edit", as: "reservations_edit"
  
  get "/login", to: "sessions#login_form", as: "login_form"
  post "/login", to: "sessions#login", as: "login"
  post "/logout", to: "sessions#logout", as: "logout"
end


