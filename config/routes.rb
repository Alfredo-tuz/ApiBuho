Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :subscriptions do
        collection do
          get :active_crontab
        end
      end
      resources :clients #, only: [:create]
      resources :payment_histories, only: [:index]
    end
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
