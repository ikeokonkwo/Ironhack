class Car
	def initialize (color,year, edition)
		@color = color
		@year = year
		@edition = edition
	end 

	def engine_noise_1
		puts "The #{@color} #{@year} #{@edition} goes BROOOM BROOOOM"
	end 

	def engine_noise_2
		puts "The #{@color} #{@year} #{@edition} goes broom"
	end
end