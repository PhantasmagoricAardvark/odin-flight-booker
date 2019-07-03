Rails.application.routes.draw do
  root 'flights#index'

  get 	'/flights', 			to: "flights#index"
  get 	'/new_booking', 	to: "bookings#new"
  post 	'/new_booking', 	to: "bookings#create"

  resources :bookings, only: [:show]
end
