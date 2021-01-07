Rails.application.routes.draw do
  get '/', to: 'sessions#welcome', as: 'root'
  # get 'music_app/index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get 'authorized' , to: 'sessions#page_requires_login'
  post 'add_song', to: 'songs#add_song_to_playlist'
  resources :albums, only: [:index, :show]
  # resources :genres
  resources :artists, only: [:index, :show]
  resources :songs, only: [:index, :show]
  resources :playlists, only: [:index, :show]
  resources :playlists do
    delete 'remove_song'
  end
  resources :songs_in_playlists, only: [:new, :create]
  resources :users, only: [:new, :show]
  resources :users do 
    resources :playlists, module: :users 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
