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
			play
	end

	def play
		@user_input = ""
		
		while @user_input != @rooms[@current_room].exit && @user_input != "exit"
			@rooms[@current_room].display_description
			puts ">"
			@user_input = gets.chomp

			#I want to be able to get pick up from user_input and it do something else
			# if @user_input == @rooms[@current_room].item
			# 	puts "You have picked up the item. "
			# end
			actions

		end

		if @user_input == "exit"|| @user_input == "get out" 
			exit
		end

		@current_room += 1
		if @current_room != @rooms.length && @user_input != "exit"
			play
		end

		
	end

	def action?
		if @user_input == "pick up"  || @user_input == "instructions"
			return true
		else
			return false
		end
	end

	def actions
		if action?
			puts
		end

		if @user_input == "pick up"
			puts "You picked up a #{@rooms[@current_room].room_item}."
			play
			
		end

		if @user_input == "instructions"
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

		if @user_input == "get out"
			@user_input = "exit"
		end
	end

	def exit
		puts "Congrats! It's the end!!!"
	end

end
