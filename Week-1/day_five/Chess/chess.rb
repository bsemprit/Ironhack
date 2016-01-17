require_relative("lib/king.rb")
require_relative("lib/rook.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")


black_king = King.new(5, 1, "black")
white_king = King.new(5, 1, "white")

puts "\nTesting the King"

puts "Good moves - true"
puts white_king.move?(6, 2) 
puts white_king.move?(5, 2)
puts white_king.move?(4, 1)
puts "Bad moves - false"
puts white_king.move?(7, 2) 
puts white_king.move?(1, 5)
puts white_king.move?(1, 1)
puts "\n-----------------------\n"

black_rook_left = Rook.new(1, 8, "black")
black_rook_right = Rook.new(8, 8, "black")

white_rook_left = Rook.new(1, 1, "white")
white_rook_right = Rook.new(8, 1, "white")

puts "\nTesting the White Rook"

puts "Good moves - true"
puts white_rook_right.move?(8, 6)
puts white_rook_right.move?(1, 1) 
#Pattern: only one coordinate changes at a time

puts "Bad moves - false"
puts white_rook_right.move?(7, 2)
puts white_rook_right.move?(4, 3) 

white_bishop_left = Bishop.new(3, 1, "white")
white_bishop_right = Bishop.new(6, 1, "white")

black_bishop_left = Bishop.new(3, 8, "black")
black_bishop_right = Bishop.new(6, 8, "black")

puts "\nTesting the White Bishop"

puts "Good moves - true"
puts white_bishop_left.move?(4, 2)
puts white_bishop_left.move?(5, 3)
puts white_bishop_left.move?(8, 6)

#Pattern: Both coordinates change in the same multiple

puts "Bad moves - false"
puts white_bishop_left.move?(3, 3)
puts white_bishop_left.move?(1, 5) 
puts white_bishop_left.move?(8, 5) 


black_knight_left = Knight.new(2, 8, "black")
black_knight_right = Knight.new(7, 8, "black")
white_knight_left = Knight.new(2, 1, "white")
white_knight_right = Knight.new(7, 1, "white")

puts "\nTesting the Knight"

puts "Good moves - true"
puts black_knight_right.move?(6, 6)
puts black_knight_left.move?(4, 7) 
puts white_knight_right.move?(5, 2)
puts white_knight_left.move?(3, 3)

puts "Bad moves - false"
puts black_knight_right.move?(6, 5)
puts black_knight_left.move?(4, 6) 
puts white_knight_right.move?(5, 3)
puts white_knight_left.move?(5, 2)

black_queen = Queen.new(4, 8, "black")
white_queen = Queen.new(4, 1, "white")

puts "\nTesting the Queen"
puts "Good moves - true"
puts white_queen.move?(4, 2) 
puts black_queen.move?(1, 5)

puts "Bad moves - false"

puts white_queen.move?(5, 4) 
puts black_queen.move?(5, 6)

pawn_black = Pawn.new(8, 7, "black")
pawn_white = Pawn.new(1, 2, "white")

pawn2_black = Pawn.new(8, 6, "black")
pawn2_white = Pawn.new(1, 3, "white")

puts "\nBlack pawn testing"

puts "Good moves"

puts pawn_black.move?(8, 6)
puts pawn2_black.move?(8, 5)

puts pawn_white.move?(1, 4)
puts pawn2_white.move?(1, 4)

puts "False moves"

puts pawn_black.move?(7, 5)
puts pawn2_black.move?(8, 4)

puts pawn2_white.move?(1, 5)
puts pawn_white.move?(1, 6)