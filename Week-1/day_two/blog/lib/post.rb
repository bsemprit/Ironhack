class Post
	attr_accessor :title, :date, :text
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end
	def display
			puts "\n\n#{@title}"
			puts "*****************"
			puts "\n#{@text}"
			puts "------------------"
	end

end