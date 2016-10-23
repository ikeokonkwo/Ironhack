class Pawn
	attr_accessor(:cord1, :cord2, :color)
	def initialize (cord1,cord2,color)
		@cord1 = cord1
		@cord2 = cord2
		@color = color 
	end 
	def can_move?(dest1,dest2)
		if @color == "black" 
		 	if (dest2 - @cord2  == -2 ||  dest2 - @cord2 == -1) && (@cord1 - dest1 == 0)
				"yes"
			else 
				"no"
			end 
		elsif @color == "white" 
			if  (dest2 - @cord2 == 2 || dest2 - @cord2 == 1) && (@cord1 - dest1 == 0)
				"yes"
			else 
				"no"
			end 
		end
	end 
end 