Rails.application.routes.draw do
  devise_for :users
  resources :movies

  root 'pages#index'
end
