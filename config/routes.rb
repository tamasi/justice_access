Rails.application.routes.draw do
  resources :attorneys
  resources :complainants
  resources :instittutions
  resources :courts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
end
