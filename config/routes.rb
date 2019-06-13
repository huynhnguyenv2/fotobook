Rails.application.routes.draw do

  root 'home#index'
  
  devise_for :users, controllers: {registrations: 'registrations'}

  resources :users

  resources :albums do
	resources :photos
  end
  

end
