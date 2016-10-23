class Board 
	attr_accessor(:cord1, :cord2, :color)
	def initialize 
		@pieces = [nil, [],[],[],[],[],[],[],[]]
	end 
	def add_piece(piece) 
		@pieces[piece.cord1][piece.cord2] = piece
	end 
	def can_move?(dest1, dest2)
		current = @pieces[1][1]
		current.board_can_move?(dest1, dest2)
	end 
end 

# cord1,cord2, 