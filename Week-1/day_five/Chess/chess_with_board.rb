require_relative("lib/king.rb")
require_relative("lib/rook.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")




board = Board.new

board.accept

 
 #We need to accepts moves(current_position, destination)
 #Change the a2...h8 to 1,8..8,8
 #Those moves need to turn into the hash-appropriate spot
 #Then the moves need to be checked in the chess piece class
 #Then we need to see if the spot is empty
 #Then we need to check if there are conflicting pieces in the way
 #Then we need to clone the piece into the new spot and delete original piece
