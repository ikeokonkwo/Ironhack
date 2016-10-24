#Go up one, outside of spec.rb 
require_relative("../lib/string_calculator.rb")

RSpec.describe StringCalculator do 
describe "#add" do
	it "adds 2 numbers separated by commas" do 
		the_calc = StringCalculator.new 

		expect(the_calc.add("7,7")).to eq(14) 

		expect(the_calc.add("8,4")).to eq(12) 
	   end

   end
end 