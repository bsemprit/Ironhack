require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative("lib/poster.rb")

movie = Movie.new



get "/" do
	movie.movie_posters = []
	erb :home
end

get "/imdb_test" do
	@search_result= params[:search]

	@movie_posters= movie.movie_search(@search_result)

	@number_of_results = @movie_posters.length #number
	
	random_movie = movie.randomizer
	@random_movie = random_movie

	erb :imdb_test
end

post "/quiz_answer" do
	@movie_title = params[:movie_title]
	@random_movie_title = params[:random_movie]

	if @movie_title = @random_movie_title
		redirect to "/answer"
	else
		erb :wrong_answer
	end

end

get "/answer" do
	erb :answer
end