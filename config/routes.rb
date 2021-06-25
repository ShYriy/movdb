Rails.application.routes.draw do
  get '/movies', to: 'movies#index'

  root 'pages#index'
end
