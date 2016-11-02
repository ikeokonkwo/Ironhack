class CountryCounter
def count_countries(country, array)
	counter = 0

	array.each do |ecah_country|
		if ecah_country == country 
			counter += 1
		end 
	end

	counter
end 
end 