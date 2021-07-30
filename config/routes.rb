Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/signup', to: "users#new"
  post '/signup', to: "users#create"
  resources :users, only: [:show]

  resources :gyms
  resources :workouts do
    resources :scores, shallow: true
  end

  

end