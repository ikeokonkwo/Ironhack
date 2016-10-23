class Password

	def compare_password
	#ASK FOR USERNAME
	puts "Username:"
	username_input = gets.chomp

	#ASK FOR PASSWORD
	puts "Password:"
	password_input= gets.chomp
		if username_input == "ike" && password_input == "whatever"
			puts "Welcome Ike"
			puts""
			puts""
			puts "<=========================>"
			puts "Please enter some text:"
			# text = gets.chomp
		else
			puts "Invalid credentials. Access Denied"
		end 
	end
end 