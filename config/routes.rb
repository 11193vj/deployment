Rails.application.routes.draw do
	root 'students#index'


	get '/new' => 'students#new'
	post '/new' => 'students#index'	
	get '/index/login' => 'sessions#login'
	post 'login' => 'sessions#create'
	get '/user_home' => 'students#user_home'
	post 'logout' => 'sessions#destroy'
	post 'fill_choices' => 'students#fill_choices'
	get '/fill_choices/view_choices' => 'students#view_choices'
	get '/fill_choices/add_choices' => 'students#add_choices'
	get '/fill_choices/edit_choices' => 'students#edit_choices'
	get '/fill_choices/add_choices/show' => 'students#show'
	get 'getdata' => 'students#getdata'
	resources :students;
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
