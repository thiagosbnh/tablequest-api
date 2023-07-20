Rails.application.routes.draw do
  resources :users
  resources :tables
  resources :boardgames
  resources :bookings
  
  get 'current_user', to: 'current_user#index'

    # Add a logout route
    delete 'logout', to: 'users/sessions#destroy'

    
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
