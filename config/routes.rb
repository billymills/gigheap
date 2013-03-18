Gigheap::Application.routes.draw do
  	# get "jobs/new"

	resources :users
	resources :sessions, 	only: [:new, :create, :destroy]
	match '/signup', 		to: 'users#new'  # signup_path
	match '/signin', 		to: 'sessions#new'  # signin_path
	match '/signout', 		to: 'sessions#destroy', via: :delete	
  	match '/contact', 		to: 'pages#contact'  # contact_path

	#route for posting new job page
	resources :jobs
	match '/postjob', 		to: 'jobs#new'

  	root :to => 'pages#home'

end
