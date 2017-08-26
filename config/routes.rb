Rails.application.routes.draw do
  get 'users/signup'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "page#welcome"
  get '/about' => 'page#about'
  get 'signup' => 'users#signup',:as => 'signup'
  get 'login'  => 'users#login',:as => 'login'
  post 'create_login_session' => 'users#create_login_session'
  delete 'logout' => 'users#logout',:as => 'logout'
  resources :users, only: [:create]
  resources :issues
  resources :comments, only: [:create]
end
