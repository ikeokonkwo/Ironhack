require "sinatra"
require "sinatra/reloader" if development? 
require "pry" if development? 

get "/" do 
	@drank = session[:beverage]
erb(:home)
end 

get "/hey" do 
	erb(:home)
end 

enable(:sessions)

# http://localhost:4567/save_to_session/vanilla_coke

#   /save_to_session/vanilla_coke
#   /save_to_session/hghjk
#   /save_to_session/hello
get "/save_to_session/:thing" do
session[:beverage] = params[:thing]
redirect to ("/")
end 

get "/hi" do 
	erb(:hipage)
end 



get "/about" do 
	#the erb method should be the last thing 
	erb(:about)
	#views/about.erb
end 



get "/best_pizza" do 
	@toppings = ["pepporoni", "mango", "basil"]
	erb(:best_pizza)
end 