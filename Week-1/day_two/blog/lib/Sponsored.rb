class Sponsored < Post
	def display
		puts "\n\n************Sponsored Post*********"
		super	
		puts "\n************Sponsored Post*********"
	end
end