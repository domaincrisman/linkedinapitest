Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :linkedin
	get '/linkedin_profile' => "linkedin#linkedin_profile"
	get '/oauth_account' => "linkedin#oauth_account"
	get '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'
	root :to => 'linkedin#index'
end
