Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'new_pokemon', to: 'pokemons#new'
  get 'new_pokemon', to: 'pokemons#new'
  resources :pokemons

  
  patch 'capture', to: 'pokemons#capture'
  patch 'damage', to: 'pokemons#damage'
  get 'pokemons/new', to: 'pokemons#new'
  patch 'create', to: 'pokemons#create'
  
end
