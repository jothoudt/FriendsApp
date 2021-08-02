Rails.application.routes.draw do
  devise_for :users
  resources :f_amigos
  get 'home/about'
  # root 'home#index'
  root 'f_amigos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
