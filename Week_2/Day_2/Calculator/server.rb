require "sinatra"
require_relative("lib/methods.rb")

get "/calculator" do 
	erb(:add)
end 


# params = {
# 	"number_1"=>"1",
# 	"number_2"=>"1"
# }

post "/Calculate" do
	# "Params data: " + params.inspect

	calc = Calculator.new

	first = params[:number_1].to_f 
	second = params[:number_2].to_f

	if params[:operation] == "+" 
		result =  calc.add(first, second)

	elsif params[:operation] == "-"
		result = calc.subtract(first, second)
		
	elsif params[:operation] == "*"
		result = calc.multiply(first, second)

	else params[:operation] == "/"
		result = calc.divide(first, second)
	end 

	#       # first + second 
	"#{first} #{params[:operation]} #{second} = #{result}"
	#add numbers here
end 