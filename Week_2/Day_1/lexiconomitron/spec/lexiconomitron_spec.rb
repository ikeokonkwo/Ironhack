require_relative("../lib/lexiconomitron.rb")

RSpec.describe Lexiconomitron do 

	before :each do 
		@lexi = Lexiconomitron.new
	end



  # describe "#eat_t" do

    # it "removes every letter t from the input" do
    #   expect(@lexi.eat_t("great scott!")).to eq("grea sco!")

    # end

   describe "shazam" do 

	     it "should take an array of words and reverse each element within the array then drop t's " do
	      expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
	  	end
	    end

	describe "oompa_loompa" do 
		it "should take an array and return the words less than 3 characters" do 
		 expect(@lexi.oompa_loompa(["This", "is", "a", "boring", "test"])).to eq(["is", "a"])
	end
	end
end