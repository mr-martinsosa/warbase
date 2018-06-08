Rails.application.routes.draw do
  get 'home/foursquare'
  get 'home/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root "home#index"
  resources :home

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
