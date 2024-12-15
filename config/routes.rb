Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Корневой маршрут
  root "home#index"

  # Маршруты для HomeController
  get 'genres', to: 'home#genres'
  get 'legends', to: 'home#legends'

  # Контактная форма
  get 'contact', to: 'contacts#contact', as: 'contact'
  post 'submit_message', to: 'contacts#create', as: 'submit_message'

end
