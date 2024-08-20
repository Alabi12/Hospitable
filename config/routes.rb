Rails.application.routes.draw do
  get 'dashboard/index'
  resources :developers
  # resources :data_access_requests
  resources :api_logs
  resources :api_keys
  resources :check_ins
  resources :loyalty_programs
  resources :offers
  resources :inventories
  resources :orders
  resources :menu_items
  resources :reservations
  resources :tables
  resources :reviews
  resources :staff_schedules
  resources :bookings
  resources :guests
  resources :rooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
 root 'dashboard#index'
end
