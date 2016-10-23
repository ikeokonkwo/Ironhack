class Bishop 
	attr_accessor(:cord1, :cord2, :color)
	def initialize (cord1,cord2,color)
		@cord1 = cord1
		@cord2 = cord2
		@color = color 
	end 
	def can_move?(dest1,dest2)
		if (dest2 - @cord2).abs == (dest1- @cord1).abs
			"yes"
		else 
			"no" 
		end
	end 
end 