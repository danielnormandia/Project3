Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#index'
  get '/auth/spotify/callback', to: 'users#show'

  resources :users, :moods, :comments

end
