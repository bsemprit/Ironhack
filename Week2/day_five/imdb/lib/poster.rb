class Movie
	attr_accessor :movie_posters, :random_movie
	def initialize
		
		@random_movie = nil

		
	end
	
	def movie_search(search_result)
		@movie_posters = []
		search = Imdb::Search.new(search_result)
		search_shuffled = search.movies.shuffle
		search_list = Array.new(search_shuffled[0..19])


		search_list.delete_if do |movie|
			movie.poster == nil
		end

		
		@movie_posters = search_list[0..9]

	end

	def randomizer
		@random_movie = @movie_posters.sample
	end


end