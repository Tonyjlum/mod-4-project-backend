Rails.application.routes.draw do
  resources :reviews
  namespace :api do
    namespace :v1 do
      resources :chefs
      resources :users
      resources :appointments
      resources :reviews
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
