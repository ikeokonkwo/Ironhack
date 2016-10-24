class StringCalculator 
		string_of_numbers  = ""

#SPLIT STRING & ADD IT'S ELEMENTS 

	def add(string_of_numbers = "")
		counter = 0
		string_of_numbers.gsub!('$',",")
		# p string_of_numbers
        array_of_split_numbers = string_of_numbers.split(',') 
        # p array_of_split_numbers 

        empty_array = []
        	array_of_split_numbers.each do |number|
        		empty_array.push(number.to_i)
        								end 

        empty_array.each do |element|
        counter += element
						end
						counter
	end 
end 