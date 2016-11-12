Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get "/", to: "site#home"

get "/about", to: "site#about"
get "/contact", to: "site#contact"
get'/say_name/:name', to: 'site#say_name'


get "/calculator", to: "calculator#add_form"
post "/calculate", to: "calculator#process_addition"
get '/projects', to: 'projects#index'


get '/projects/new', to: 'projects#new'

get "/projects/:id", to: "projects#show", as: "project"

post '/projects', to: 'projects#create'



# get "/projects/:id, to: "pro as: "project"

get '/projects/:project_id/time_entries', to: 'time_entries#index'

get '/projects/:project_id/time_entries/new', to: 'time_entries#new', as: "new_project_time_entry"

post "/projects/:project_id/time_entries", to: "time_entries#create", as: "project_time_entries"

get "/projects/:project_id/time_entries/:id/edit", to: "time_entries#edit", as: "edit_project_time_entry"
patch "/projects/:project_id/time_entries/:id", to: "time_entries#update", as: "project_time_entry"

delete "/projects/:project_id/time_entries/:id", to: "time_entries#destroy"





end
