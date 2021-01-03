Rails.application.routes.draw do
  get '/', to: 'sessions#welcome', as: 'root'
  # get 'music_app/index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get 'authorized' , to: 'sessions#page_requires_login'
  post 'add_song', to: 'songs#add_song_to_playlist'
  resources :albums
  resources :genres
  resources :artists
  resources :songs
  resources :playlists
  resources :users do 
    resources :playlists, module: :users 
  end
  resources :songs do 
    resources :playlists, module: :songs
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
