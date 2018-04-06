Rails.application.routes.draw do
  resources :pages
  resources :notes
  get 'static_pages/home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#home"
  resources :profiles
end
