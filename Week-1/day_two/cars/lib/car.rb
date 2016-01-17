#lib/car.rb

#class names should be CapitalizedLikeThis

class Car
	attr_accessor :color, :make, :sound
	def initialize (color, make, sound)
		@color = color
		@make = make
		@sound = sound
	end

	def rev
		puts @sound
	end
end
