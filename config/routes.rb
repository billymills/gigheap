Gigheap::Application.routes.draw do
	resources :users
	resources :sessions, only: [:new, :create, :destroy]
	match '/signup', to: 'users#new'  # signup_path
	match '/signin', to: 'sessions#new'  # signin_path
	match '/signout', to: 'sessions#destroy', via: :delete	
  	match '/contact', to: 'pages#contact'  # contact_path

  root :to => 'pages#home'

end
