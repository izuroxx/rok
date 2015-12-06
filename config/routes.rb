Rails.application.routes.draw do
  
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