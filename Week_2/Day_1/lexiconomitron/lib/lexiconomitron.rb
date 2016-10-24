class Lexiconomitron
	def eat_t(string)
	
		string.delete('t')
	end
	def shazam(x)

		new_array = x.map do |element|
			eat_t(element.reverse.downcase)
			
		end
		newnew_array = []

		newnew_array.push(new_array[0]) 
		 newnew_array.push(new_array.last)
	end
	def oompa_loompa(newnew_array)
		
		oompa_array = []
		  newnew_array.each do |x|
			if x.length <= 3
			oompa_array.push(x)
			end 
			end
		oompa_array
	end 

end