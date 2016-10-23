heroes_array = ["Batman", "Green Latern", "Superman", "The Flash", "Cyborg", "Wonder Woman", "Aquaman"]

# EACH METHOD 
# lowercase_array = []
#  heroes_array.each do |x|
#  	lowercase_array.push( x.downcase )
#  	end

# Original Array|Lowercase Array 
# --------------------------------
# 0 "Batman" --> "batman"
# 1 "Green Lantern" --> "green lantern"
# 2 "Superman" --> "superman"
# "etc.

#MAP METHOD 
# lowercase_array = heroes_array.map do |x|
# 	x.downcase 
# end

# puts "Original Array"
# puts "-------------"
# puts heroes_array

# puts ""
# puts ""
# puts ""

# puts "NEW ARRAY"
# puts "----------"
# puts lowercase_array

# puts ""
# puts ""
# puts ""

# lengths_array = heroes_array.map do |x|
# x.length 
# end 

# puts " LENGTH"
# puts "--------"
# puts lengths_array


cities_array = ["granada", "campdon", "ub", "memphis"]
capitalized_cites = cities_array.map do |x|
	puts x.capitalize
end 