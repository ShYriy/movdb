Rails.application.routes.draw do
  devise_for :users
  resources :movies do
    resources :genres
  end

  root 'pages#index'
end
