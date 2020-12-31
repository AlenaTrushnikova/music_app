Rails.application.routes.draw do
  root 'application#hello'
  # get 'music_app/index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  resources :albums
  resources :genres
  resources :artists
  resources :songs
  resources :playlists
  resources :users, only: [:show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
