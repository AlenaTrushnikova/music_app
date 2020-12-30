Rails.application.routes.draw do
  get 'music_app/index'
  resources :albums
  resources :genres
  resources :artists
  resources :songs
  resources :playlists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
