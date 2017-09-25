Rails.application.routes.draw do
  
	root 'businesses#index'
	resources :posts
	resources :businesses
	resources :comments
	resources :appointments

	get '/my_business', to: 'businesses#my_business'

	devise_for :users		
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
