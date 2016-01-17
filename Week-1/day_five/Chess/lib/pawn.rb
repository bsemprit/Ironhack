class Pawn
	def initialize(position_x, position_y, color)
		@position_x = position_x
		@position_y = position_y
		@color = color
		
	end

	def move?(destination_x, destination_y)
		diff_x = destination_x - @position_x
		diff_y = destination_y - @position_y

		if @color == "black"
			if (@position_y == 7) &&
				(diff_x == 0 && (diff_y == -1 || diff_y == -2))
				true
			elsif (diff_x == 0 && (diff_y == -1))
				true
			else
				false
			end

		elsif @color == "white"
			if (@position_y == 2) &&
				(diff_x == 0 && (diff_y == 1 || diff_y == 2))
				true
			elsif (diff_x == 0 && (diff_y == 1))
				true
			else
				false
			end
		end
		end

end

