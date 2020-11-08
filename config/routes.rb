Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :transactions
      resources :items
    end
  end
 
end
