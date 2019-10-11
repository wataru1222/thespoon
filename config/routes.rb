Rails.application.routes.draw do
root to: 'pages#home'
resources :restaurants
resources :users

end
