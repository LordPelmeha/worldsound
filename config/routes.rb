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
  get 'contact', to: 'home#contact'
end
