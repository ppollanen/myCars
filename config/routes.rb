Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  #
  get "/home/", to: "home#index"

  get "/cars", to: "cars#index"
  get "/cars/new", to: "cars#new", as: "new_car"
  post "/cars", to: "cars#create"
  get "/cars/:id", to: "cars#show", as: "car"
  get "/cars/:id/edit", to: "cars#edit", as: "edit_car"
  patch "/cars/:id", to: "cars#update"
  put "/cars/:id", to: "cars#update"

  root "home#index"
end
