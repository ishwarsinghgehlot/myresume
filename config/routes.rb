Rails.application.routes.draw do
 
  resources :client_feedbacks
  resources :testimonials
  resources :codeing_skills
  resources :experiences
  resources :educations
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	get 'test/index'
  	
  	root 'home#index'
    devise_for :users, controllers: {
        sessions: 'users/sessions' ,registrations: 'users/registrations', passwords: 'users/passwords'        
      }

	devise_scope :user do
		root to: 'users/sessions#new'
		get 'users/sign_out', to: 'users/sessions#destroy'
	end  

end
