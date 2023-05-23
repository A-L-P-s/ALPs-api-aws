Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show] do
        get '/challenges/new', to: 'users/challenges#new'
        resources :challenges, except: [:update], controller: 'users/challenges'
      end
    end
  end
end
