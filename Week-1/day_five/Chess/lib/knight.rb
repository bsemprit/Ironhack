class Knight
	def initialize(position_x, position_y, color)
		@position_x = position_x
		@position_y = position_y
		@color = color
	end

	def move?(destination_x, destination_y)
		diff_x = (destination_x - @position_x).abs
		diff_y = (destination_y - @position_y).abs #absolute value

		if (diff_x == 2 && diff_y == 1) || (diff_y ==2 && diff_x ==1)
			true
		else
			false
		end
	end

end