# class CountryCounter
# def count_countries(country, array)
# 	counter = 0

# 	array.each do |ecah_country|
# 		if ecah_country == country 
# 			counter += 1
# 		end 
# 	end

# 	counter
# end 
# end 
require_relative("lib/country_counter.rb")

countries = [
"Puerto Rico", "Puerto Rico",  
"USA","USA","USA","USA","USA",
"Nicaragua", "France",
"Cuba", "Cuba","Cuba", "Cuba",
"Nigeria", "Haiti"
]

country_thing = CountryCounter.new 

p country_thing.count_countries("USA", countries) == 5
p country_thing.count_countries("Puerto Rico", countries) == 2
p country_thing.count_countries("Cuba", countries) == 4
p country_thing.count_countries("France", countries) == 1 
p country_thing.count_countries("Japan", countries) == 0

puts ""
puts "Countries represented in this room:"
puts "-------------------"

countries.each do |a_country|
	puts "some of us are from #{a_country}!!"
end 

puts ""

uppercase_countries = countries.map do |a_country|
	a_country.upcase
end 

puts "COUNTRIES REPRESENTED IN THIS ROOM IN UPPERCASE"
puts "-------------------------------"
uppercase_countries.each do |a_country|
	puts "SOME OF US ARE FROM #{a_country}!!"

end 