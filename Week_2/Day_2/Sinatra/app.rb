require "sinatra"

get "/" do 
erb(:home)
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