Rails.application.routes.draw do
  resources :users
	resources :articles
	resources :students
	root 'students#new'
	get 'student/new'
	#get 'students/show1'
	post 'student/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
