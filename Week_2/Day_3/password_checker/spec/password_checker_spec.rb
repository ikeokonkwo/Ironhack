RSpec.describe PasswordChecker do
	describe "#check_password" do 
		it returns true for "valid passwords" do 
			checker = PasswordChecker.new 

			expect ( checker.check_password("nizar@example.com", "aB76*%cz#3")).to eq(true)
		end
		it "returns fasle for passwords shorter than 8 characters" do

		end

		it "returns false for passwords without letters" do 
		end  

		it "returns false for passwords without numbers" do 
		end 

		it "returns false for passwords without symbols" do 
		end  

 		it "returns false for passwords without uppercase letters" do 
		end  

		it "returns false for passwords without lowercase letters" do 
		end  

		#BONUS
		it "returns false for passwords with the email username" do 
		end  
		
		end 
	end 
end 