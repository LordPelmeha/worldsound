Rails.application.routes.draw do
  get "genres/index"
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Корневой маршрут
  root "home#index"

  # Маршруты для HomeController
  get 'genres', to: 'home#genres'
  get 'legends', to: 'home#legends'

  # Маршрут для регистрации
  # get 'signup', to: 'users#new', as: :signup
  # post 'signup', to: 'users#create'
  get "/", to: "home#index"

  get "/signup", to: "users#signup"
  get "/login", to: "users#login"
  get "/dashboard", to: "users#dashboard"
  get "/logout", to: "users#logout"
  
  post '/signup', to: 'users#signup'
  post "/login", to: 'users#login'
  post 'logout', to: 'users#logout'

  # Контактная форма
  get 'contact', to: 'contacts#contact', as: 'contact'
  post 'submit_message', to: 'contacts#create', as: 'submit_message'

end
