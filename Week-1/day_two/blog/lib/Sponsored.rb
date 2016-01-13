class Sponsored < Post
	def display
			puts "\n\n************#{@title}*********"
			puts "*****************"
			puts "\n#{@text}"
			puts "------------------"
	end
end