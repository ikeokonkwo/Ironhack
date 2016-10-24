#Go up one, outside of spec.rb 
require_relative("../lib/string_calculator.rb")

the_calc = StringCalculator.new
RSpec.describe StringCalculator do 
	describe "#add" do
		it "adds 2 numbers separated by commas" do 
			 
			expect(the_calc.add("7,7")).to eq(14) 
			expect(the_calc.add("8,4")).to eq(12) 
		end 


		it "returns the number for a single number" do 
			expect(the_calc.add("6")).to eq(6)
			expect(the_calc.add("3")).to eq(3)
		end

		it "returns 0 for the empty string" do 
			expect(the_calc.add("")).to eq(0)
		end 

	    it "returns 0 when no argument given" do
	   		expect(the_calc.add()).to eq(0)
	   	end 
	end 
end