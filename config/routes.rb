Rails.application.routes.draw do
  resources :movies

  root 'pages#index'
end
