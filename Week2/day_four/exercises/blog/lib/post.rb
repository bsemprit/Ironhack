class Post 
	attr_accessor :title, :date, :content, :id
	def initialize(id, title, date, content)
		@title = title
		@date = date
		@content = content
		@id = id
	end
	
	
end