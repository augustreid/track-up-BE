Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :horses do
        resources :rides
      end
    end
  end
end
