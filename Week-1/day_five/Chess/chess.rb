require_relative("lib/king.rb")
require_relative("lib/rook.rb")

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