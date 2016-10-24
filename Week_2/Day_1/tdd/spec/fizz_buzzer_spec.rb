require_relative("../lib/fizz_buzzer.rb")

the_fzbz = FizzBuzzer.new
RSpec.describe FizzBuzzer do 

	describe "number return" do 
	it "should return string form of number" do 
		expect(the_fzbz.fizz_buzz(7)).to eq("7")
		expect(the_fzbz.fizz_buzz(11)).to eq("11")
	end 
	it "should return 'fizz' when the # is divisible by 3" do 
			expect(the_fzbz.fizz_buzz(3)).to eq("fizz")
	end 
	it "should return 'buzz' when the # is divisible by 5" do 
		expect(the_fzbz.fizz_buzz(5)).to eq("buzz")
	end
		it "should return 'fizzbuzz' when the # is divisible by 3 & 5" do 
		expect(the_fzbz.fizz_buzz(15)).to eq("fizzbuzz")
	end
	end

end
