Rails.application.routes.draw do
  get 'users/show'
  get '/outposts', to: 'outposts#index'
  post '/outposts', to: 'outposts#create'
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
