Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/auth/:provider/callback', to: "sessions#omniauth"

  root 'welcome#index'

  get '/signup', to: "users#new"
  post '/signup', to: "users#create"

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"

  delete '/logout', to: "sessions#destroy"

  resources :users, only: [:show, :edit, :update, :destroy]
  
  resources :gyms do
    member do
      get 'join'
      get 'leave'
    end
  end

  resources :workouts do
    resources :scores, shallow: true
  end

end