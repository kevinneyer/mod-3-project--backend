Rails.application.routes.draw do
  resources :ingredients
  resources :cocktail_ingredients
  resources :customers
  resources :bars
  resources :cocktails
  patch 'cocktails/comments/:id', to: "cocktails#update_comments"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
