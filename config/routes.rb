Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :welcome, only: [:index]
  resources :cities
  resources :venues
  resources :artists
  resources :shows
end
