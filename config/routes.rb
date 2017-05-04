Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homepages#index'

  get 'homepages', to: 'homepages#index'
  get 'recipes/:page', to: 'recipes#index', as: 'search_recipe'
  get 'recipes/:name', to: 'recipes#show', as: 'recipe'
end
