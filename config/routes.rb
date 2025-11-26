Rails.application.routes.draw do
  get "/caramels", to: "caramels#index", as: "caramels"
  get "/caramels/new", to: "caramels#new", as: "new_caramel"
  post "/caramels", to: "caramels#create"
  get "/caramels/:id", to: "caramels#show", as: "caramel"
  get "/caramels/:id/edit", to: "caramels#edit", as: "edit_caramel"
  patch "/caramels/:id", to: "caramels#update"
  put "/caramels/:id", to: "caramels#update"
  delete "/caramels/:id", to: "caramels#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
