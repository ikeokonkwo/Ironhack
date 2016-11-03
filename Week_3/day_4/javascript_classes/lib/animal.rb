class Animal
	def initalize (name, breed,sound)
		@name = name
		@breed = breed
		@sound = sound 
	end 
	def chase 
		puts "#{@name} is chasing cars" 
	end 

	def bark 
		puts @sound
	end 
end 