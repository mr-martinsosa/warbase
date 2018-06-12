Rails.application.routes.draw do
  get '/bases', to: 'bases#index'
  post '/bases', to: 'bases#create'
  get 'home/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root "home#index"
  resources :home
  resources :base

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
