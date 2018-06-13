Rails.application.routes.draw do
  get 'users/show'
  post 'users/update', to: 'users#update'
  get '/outposts', to: 'outposts#index'
  post '/outposts', to: 'outposts#create'
  post '/outposts/update', to: 'outposts#update'
  get 'home/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root "home#index"
  resources :home
  resources :outposts
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
