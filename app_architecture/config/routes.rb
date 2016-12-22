Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#index'
  get '/auth/spotify/callback', to: 'sessions#create'
  post '/comment_add', to: 'comments#create'
  post '/playlist_add', to: 'comments#makePlaylist'
  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users, :moods, :comments
  resources :sessions, only: [:create, :destroy]
end
