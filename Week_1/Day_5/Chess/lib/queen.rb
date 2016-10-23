class Queen
	attr_accessor(:cord1, :cord2, :color)
	def initialize (cord1,cord2,color)
		@cord1 = cord1
		@cord2 = cord2
		@color = color 
	end 
	def can_move?(dest1,dest2)
		if (dest1 - @cord1).abs >> 0 && (dest2 - @cord2).abs == 0
			"yes"
		elsif (dest1 -@cord1).abs == 0 && (dest2 - @cord2).abs >> 0
			"yes"
		elsif (dest1-@cord1).abs == (dest2-@cord2).abs
			"yes"
		else 
			"no" 
		end
	end 
end 