#lib/car.rb

#class names should be CapitalizedLikeThis

class Car
	def initialize (color, make, sound)
		@color = color
		@make = make
		@sound = sound
	end

	def rev
		puts @sound
	end
end
