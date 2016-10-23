# app.rb
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/horse.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")

# /---------------------------------------------------------
#  ------------------------- ROOK --------------------------
#  ---------------------------------------------------------/

black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")


puts "Valid Rook movements"
puts "--------------------"

# 1,8   ----->   1,5
# - x: no change
# - y: decreasing by 3


# 1,8   ----->   5,8
# - x: increasing by 4
# - y: no change


# 8,1   ----->   8,3
# - x: no change
# - y: increasing by 2


# 8,1   ----->   2,1
# - x: decreasing by 6
# - y: no change


p black_rook_left.can_move?(1, 5) == "yes"
p black_rook_left.can_move?(5, 8) == "yes"
p white_rook_right.can_move?(8, 3) == "yes"
p white_rook_right.can_move?(2, 1) == "yes"


puts "Invalid Rook movements"
puts "----------------------"

p black_rook_left.can_move?(2, 7) == "no"
p black_rook_left.can_move?(2, 5) == "no"
p white_rook_right.can_move?(3, 5) == "no"
p white_rook_right.can_move?(5, 6) == "no"

puts ""



# /---------------------------------------------------------
#  ------------------------- KING --------------------------
#  ---------------------------------------------------------/

black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")


puts "Valid King movements"
puts "--------------------"

p black_king.can_move?(5, 7) == "yes"
p black_king.can_move?(6, 7) == "yes"
p white_king.can_move?(6, 2) == "yes"
p white_king.can_move?(5, 2) == "yes"
p white_king.can_move?(4, 1) == "yes"


puts "Invalid King movements"
puts "----------------------"

p black_king.can_move?(5, 4) == "no"
p black_king.can_move?(7, 5) == "no"
p white_king.can_move?(7, 2) == "no"
p white_king.can_move?(1, 5) == "no"
p white_king.can_move?(1, 1) == "no"


# /---------------------------------------------------------
#  ------------------------- horse --------------------------
#  ---------------------------------------------------------/

black_horse = Horse.new(4, 4, "black")
white_horse = Horse.new(4, 4, "white")


puts "Valid Horse movements"
puts "--------------------"

p black_horse.can_move?(5, 2) == "yes"
p black_horse.can_move?(3, 2) == "yes"
p white_horse.can_move?(2, 3) == "yes"
p white_horse.can_move?(6, 3) == "yes"
p white_horse.can_move?(6, 5) == "yes"


puts "Invalid Horse movements"
puts "----------------------"

p black_horse.can_move?(1, 1) == "no"
p black_horse.can_move?(2, 2) == "no"
p white_horse.can_move?(1, 4) == "no"
p white_horse.can_move?(3, 3) == "no"
p white_horse.can_move?(8, 3) == "no"

# /---------------------------------------------------------
#  ------------------------- Bishop --------------------------
#  ---------------------------------------------------------/

black_bishop = Bishop.new(4, 4, "black")
white_bishop = Bishop.new(4, 4, "white")


puts "Valid Bishop movements"
puts "--------------------"

p black_bishop.can_move?(5, 3) == "yes"
p black_bishop.can_move?(3, 3) == "yes"
p white_bishop.can_move?(3, 5) == "yes"
p white_bishop.can_move?(6, 2) == "yes"
p white_bishop.can_move?(2, 2) == "yes"


puts "Invalid Bishop movements"
puts "----------------------"

p black_horse.can_move?(4, 1) == "no"
p black_horse.can_move?(4, 2) == "no"
p white_horse.can_move?(1, 2) == "no"
p white_horse.can_move?(1, 3) == "no"
p white_horse.can_move?(7, 3) == "no"





# /---------------------------------------------------------
#  ------------------------- QUEEN --------------------------
#  ---------------------------------------------------------/

black_queen = Queen.new(4, 4, "black")
white_queen = Queen.new(4, 4, "white")


puts "Valid Queen movements"
puts "--------------------"

p black_queen.can_move?(5, 4) == "yes"
p black_queen.can_move?(7, 4) == "yes"
p white_queen.can_move?(2, 4) == "yes"
p white_queen.can_move?(1, 1) == "yes"
p white_queen.can_move?(4, 3) == "yes"


puts "Invalid Queen movements"
puts "----------------------"

p black_queen.can_move?(3, 6) == "no"
p black_queen.can_move?(3, 2) == "no"
p white_queen.can_move?(7, 2) == "no"
p white_queen.can_move?(6, 3) == "no"
p white_queen.can_move?(2, 3) == "no"







# /---------------------------------------------------------
#  ------------------------- PAWN --------------------------
#  ---------------------------------------------------------/

black_pawn = Pawn.new(2, 7, "black")
white_pawn = Pawn.new(2, 2, "white")


puts "Valid Pawn movements"
puts "--------------------"

p black_pawn.can_move?(2, 6) == "yes"
p black_pawn.can_move?(2, 5) == "yes"
p white_pawn.can_move?(2, 3) == "yes"
p white_pawn.can_move?(2, 4) == "yes"
# p white_pawn.can_move?(, ) == "yes"


puts "Invalid Pawn movements"
puts "----------------------"

p black_pawn.can_move?(4, 1) == "no"
p black_pawn.can_move?(1, 5) == "no"
p white_pawn.can_move?(5, 2) == "no"
p white_pawn.can_move?(5, 3) == "no"
# p white_pawn.can_move?(, ) == "no"





puts "======================================="
# /---------------------------------------------------------
#  ------------------------- Board App ---------------------
#  ---------------------------------------------------------/

myboard = Board.new
myboard.add_piece(white_horse)

puts white_horse.can_move?(4,2) == "no"
