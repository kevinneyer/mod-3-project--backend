Rails.application.routes.draw do
  resources :comments
  resources :ingredients
  resources :cocktail_ingredients
  resources :customers
  resources :bars
  resources :cocktails
<<<<<<< HEAD
  patch 'cocktails/:id/likes', to: 'cocktails#update_likes'
  get 'cocktails/:id/likes', to: 'cocktails#update_likes'
=======

  patch 'cocktails/:id/likes', to: 'cocktails#update_likes'
  get 'cocktails/:id/likes', to: 'cocktails#update_likes'

>>>>>>> 22ac59b6cadd09c0426682b0003779cd6099d66a
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
