class Designer 
include Payable
include CaffeineConsumer

	def design_things 
		consume_caffeine
		select_typography
		select_colors 
		receive_salary
	end 

	def select_typography
		puts "Comic Sans"
	end 

	def select_colors
		puts "Green"
	end 
	def receive_salary
		puts "welcome to the $1 club"
	end 
end 