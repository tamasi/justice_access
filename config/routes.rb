Rails.application.routes.draw do
  resources :laws
  resources :law_categories
  resources :natives
  resources :disabilities
  resources :genders
  resources :attorneys
  resources :complainants
  resources :instittutions
  resources :courts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
end
