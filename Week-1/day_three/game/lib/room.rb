class Room
	attr_reader :name, :exit, :description
	def initialize(name, exit, description)
		@name = name
		@exit = exit
		@description = description
	end


end