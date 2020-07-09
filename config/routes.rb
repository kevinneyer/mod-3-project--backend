Rails.application.routes.draw do
  resources :comments
  resources :ingredients
  resources :cocktail_ingredients
  resources :customers
  resources :bars
  resources :cocktails

  patch 'cocktails/:id/likes', to: 'cocktails#update_likes'
  get 'cocktails/:id/likes', to: 'cocktails#update_likes'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
