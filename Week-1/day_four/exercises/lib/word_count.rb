class WordCounter
	def initialize(text)
		@text = text
	end

	def word_count
		words = @text.split(" ")
		words.length
	end

end