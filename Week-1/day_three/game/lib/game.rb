class Game
	attr_accessor :current_room
	def initialize
		@rooms = []
		@current_room = 0
	end

	def add_rooms(room)
		@rooms.push(room)
	end

	def start
			puts "This is the game that will never end (but it will)."
			puts "It will take you on a journey that will change your life."
			puts "Maybe."
			puts "But it will."
			puts "Anyways... So this is the start of the game."
			puts "You can enter a few things in the room like:"
			puts "> instructions"
			puts "> get out"
			puts "> pick up"
			puts "> N"
			puts "> S"
			puts "> E"
			puts "> W"
	end

	def play
		user_input = ""
		
		while user_input != @rooms[@current_room].exit && user_input != "exit"
		@rooms[@current_room].display_description
		user_input = gets.chomp
		end

		@current_room += 1
		if @current_room != @rooms.length && user_input != "exit"
		play
		end
	end

	def change_rooms
		
	end

end
