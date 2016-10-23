class User
	def initialize (name, email, age, ethnicity,gender)
		@name = name 
		@email = email
		@age = age
		@ethnicity = ethnicity
		@gender = gender 

	end 

	def login
		puts "#{@name} is logging in with #{@email}"
	end 
#--------------------------------
	def greet 
		puts "Hello my name is #{@name} "
		puts "I am #{@age} years old. "
	end 
end 
# Classes require and end just as definitoins do 
#-------------------------------------
 
# name
# email
# age
# ethnicity
# gender