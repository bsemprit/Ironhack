#app.rb

require "sinatra"

get "/" do
	"My first Sinatra app"

	
end

get "/about" do
	"What about me?
	I am awesome.
	I wonder if this is showing new lines.
	La
	La"
	end

get "/author" do
	@greeting = "You are entering a new world"
	erb(:author)
end

get "/hi" do
	@greeting = "Hello, world"
	erb(:hi)
end