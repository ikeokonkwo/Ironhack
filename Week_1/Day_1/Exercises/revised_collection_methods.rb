class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

#Iteration 0: Array of Homes
homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Ike's place", "Tampa", 5, 100),
  Home.new("Samara's place", "Miami", 1, 10),
  Home.new("Nick's place", "Cambridge", 4, 80),
  Home.new("Jose's place", "Havana", 20, 20),
  Home.new("Alia's place", "Mumbai", 50, 5)  
]

#Iteration 1: List of Homes

# homes.each do |x|
# 	puts ""
# 	puts "This is #{x.name}"
# 	puts"Location: #{x.city}" 
# 	puts "Capacity: #{x.capacity}" 
# 	puts "Price: #{x.price}"
# 	puts "--------------"
# end 


#Iteration 2: Sorting + User Input

# puts ""
# puts ""
# puts ""
# puts "HOW WOULD YOU LIKE YOUR HOMES SORTED?"
# f = gets.chomp 

# if f == "price" then  
# sorted_prices = []
# sorted_prices = homes.sort! {|b,a|
# 	a.price <=> b.price
# }
# sorted_prices.each do |x|
# 	puts ""
# 	puts "This is #{x.name}"
# 	puts"Location: #{x.city}" 
# 	puts "Capacity: #{x.capacity}" 
# 	puts "Price: #{x.price}"
# 	puts "--------------"
# end 

# elsif f == "capacity" 
# sorted_capacity = []
# sorted_capacity = homes.sort! {|b,a|
# 	a.capacity <=> b.capacity
# }
# sorted_capacity.each do |x|
# 	puts ""
# 	puts "This is #{x.name}"
# 	puts"Location: #{x.city}" 
# 	puts "Capacity: #{x.capacity}" 
# 	puts "Price: #{x.price}"
# 	puts "--------------"
# end 

# else 
# homes.each do |x|
# 	puts ""
# 	puts "This is #{x.name}"
# 	puts"Location: #{x.city}" 
# 	puts "Capacity: #{x.capacity}" 
# 	puts "Price: #{x.price}"
# 	puts "--------------"
# end 
# end


#Iteration 3 & 4 & 5-- Filter By City Using Select/Average/ Name your price 
display = []
puts ""
puts ""
puts ""
puts "HOW WOULD YOU LIKE YOUR HOMES SORTED?"
f = gets.chomp 


if f == "price" then  
puts "Would you like to enter a price (y/n) ?"
input = gets.chomp 

if input == "n" 
sorted_prices = []
sorted_prices = homes.sort! {|b,a|
	a.price <=> b.price
}
sorted_prices.each do |x|
	puts ""
	puts "This is #{x.name}"
	puts"Location: #{x.city}" 
	puts "Capacity: #{x.capacity}" 
	puts "Price: #{x.price}"
	puts "--------------"
	display = sorted_prices
	end
elsif input == "y"
	puts "What price?"
	input_2 = gets.chomp.to_i  
	display_input = []
	display_input = homes.find { |marc| marc.price == input_2 }
	puts "#{display_input.name}, #{display_input.city}, #{display_input.capacity}, #{display_input.price}"
#   	   x.price == input_2 
#   	if input_2 == x.price 
#   	puts "The first home at this price is:"
# puts homes.name
#end
	

end




elsif f == "capacity" 
sorted_capacity = []
sorted_capacity = homes.sort! {|b,a|
	a.capacity <=> b.capacity
}
sorted_capacity.each do |x|
	puts ""
	puts "This is #{x.name}"
	puts"Location: #{x.city}" 
	puts "Capacity: #{x.capacity}" 
	puts "Price: #{x.price}"
	puts "--------------"
	display = sorted_capacity
end 


elsif f == "city"
puts "What City?"
c = gets.chomp

city_selected_homes = []
city_selected_homes = homes.select do |x|
  x.city == c
end 

  puts ""
 city_selected_homes.each do |x|
	puts ""
	puts "This is #{x.name}"
	puts"Location: #{x.city}" 
	puts "Capacity: #{x.capacity}" 
	puts "Price: #{x.price}"
	puts "--------------"
	display = city_selected_homes
end


else 
homes.each do |x|
	puts ""
	puts "This is #{x.name}"
	puts"Location: #{x.city}" 
	puts "Capacity: #{x.capacity}" 
	puts "Price: #{x.price}"
	puts "--------------"
	display = homes
end 
end


puts ""
puts "------------"
total_price = display.reduce (0.0) do |sum, x|
   sum + x.price
end 

# display = city_selected_homes 

puts "The average price of Homes is:"
# puts display.
puts total_price / display.length 
puts homes.length