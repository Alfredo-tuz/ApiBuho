Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :subscriptions
      resources :clients , only: [:create]
      resources :payment_histories, only: [:index]
    end
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
