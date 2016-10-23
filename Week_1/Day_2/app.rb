#GOOD--> classes need to start with an uppercase 
class User
	def login
		puts "User is logging in"
	end 
#--------------------------------
	def greet 
		puts "Hello"
	end 
end 
# Classes require and end just as definitoins do 
#-------------------------------------
first_user = User.new 

first_user.login
first_user.greet



################### EXERCISE ###############
class Car
	def engine_noise
		puts "BROOOM BROOOOM"
	end 
#--------------------------------------------
first_car = Car.new 

first_car.engine_noise