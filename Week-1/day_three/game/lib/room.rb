class Room
	attr_reader :name, :exit, :description, :item
	def initialize(name, exit, description)
		@name = name
		@exit = exit
		@description = description
		@item = ""
	end

	def display_description
		puts @description
	end


	def room_item
		list_of_items = [
							"book",
							"cup",
							"existentialism",
						]
		item = ""
		if @name == "The Super Small Room"
			@item = list_of_items[0]
		elsif @name == "The Small Room"
			@item = list_of_items[1]
		elsif @name == "The Real Room"
			@item = list_of_items[0]
		elsif @name == "Where are you in the Room"
			@item = list_of_items[2]
		end
		@item
	end

end
