Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homepages#index'

  get 'homepages', to: 'homepages#index'
  get 'recipes', to: 'recipes#index', as: 'search_recipe'
  get 'recipes/:uri', to: 'recipes#show', as: 'recipe'
end