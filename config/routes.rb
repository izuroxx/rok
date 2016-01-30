Rails.application.routes.draw do
  
  resources :comments
  get 'welcome/index'

get    'login'   => 'sessions#new'
post   'login'   => 'sessions#create'
delete 'logout'  => 'sessions#destroy'

root 'welcome#index'

  resources :posts

  get 'signup' => 'users#new'

  resources :users





end

# lista w  rake routes