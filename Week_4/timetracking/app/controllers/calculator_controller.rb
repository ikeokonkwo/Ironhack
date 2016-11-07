class CalculatorController < ApplicationController
	def add_form
		render "calculator"
	end 


	def process_addition
		# <input type ="number" name="first_number">
		@a = params[:first_number].to_i

		# <input type="number" name="second_number">
		@b = params[:second_number].to_i
		@result = @a + @b 
		render "results"
	end 
end
