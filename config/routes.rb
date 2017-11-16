Rails.application.routes.draw do

  resources :pattern_rows
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'

  get '/', to:'patterns#index'

  resources :projects
  resources :patterns
  resources :users

  namespace :api do
    resources :patterns, only: [ :update ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
