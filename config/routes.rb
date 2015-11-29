Rails.application.routes.draw do
  
get    'login'   => 'sessions#new'
post   'login'   => 'sessions#create'
delete 'logout'  => 'sessions#destroy'

root "sessions#new"

  resources :posts

  get 'signup' => 'users#new'

  resources :users





end

# lista w  rake routes