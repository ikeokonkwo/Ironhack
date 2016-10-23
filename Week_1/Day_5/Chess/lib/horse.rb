class Horse 
	attr_accessor(:cord1, :cord2, :color)
	def initialize (cord1,cord2,color)
		@cord1 = cord1
		@cord2 = cord2
		@color = color 
	end 
	def can_move?(dest1,dest2)
		if (dest1 - @cord1).abs == 2  && (dest2 - @cord2).abs == 1 
			"yes"
		elsif  (dest1 - @cord1).abs == 1 && (dest2 - @cord2).abs == 2
			"yes"
		else 
			"no" 
		end
	end 
end 