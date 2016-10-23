#app.rbclear
require_relative("lib/user.rb")
require_relative("lib/car.rb")

#Using Login Class

# nizar = User.new("Nizar","nizar@example.com",30,"ambiguous","cismale")
# #def initialize ( name----------email------------age---ethnicity--- gender)
# nizar.login
# nizar.greet

# puts""
# puts""
# puts""

# jose = User.new("Jose","Jose@example.com",36,"ambiguous","cismale")
# #def initialize ( name----------email------------age---ethnicity--- gender)
# jose.login
# jose.greet

# #Using Car class
# first_car = Car.new
# first_car.engine_noise

####### CAR EXAMPLE ########
range_rover = Car.new("Black","2012","Range Rover Sport Edition")
range_rover.engine_noise_1

shitty_prius = Car.new("Dirty","2012", "basic prius edition")
shitty_prius.engine_noise_2