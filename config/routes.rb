EventKit::Application.routes.draw do
	root :to => 'assets#index'
	get "assets/index"
	post "/" => 'receiver#handle_post'

	namespace :api do
		namespace :v1 do
			# Events
			post 'events/delete_all'
      get 'events/all'
			resources :events


			# Settings
			resources :settings

			# Users

      post 'users/get_token'
			resources :users
		end
	end
end
