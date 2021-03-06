Rails.application.routes.draw do
	root to:'homes#home'
	get '/home/about' => 'homes#about'
	devise_for :users
	resources :users , only: [:index, :edit, :show, :update]
	resources :books do
		resource :favorites, only: [:create, :destroy]
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
