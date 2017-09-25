Rails.application.routes.draw do
  devise_for :users
  resources :user_infos
  root 'businesses#index'
  

    
	root 'businesses#index'
	resources :posts
	resources :businesses
	resources :comments
	resources :appointments

	get '/my_business', to: 'businesses#my_business'
	get '/my_appointments', to: 'appointments#my_appointments'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match ':controller(/:action(/:id))', via: [:get, :post, :patch]
end
