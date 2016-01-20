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

get "/time" do
	@time = Time.new
	@current_times= @time.strftime("Oh but the time is: %m %d %Y")
	erb(:time)
end

get "/users/:username" do 
	@username = params[:username]
  
  erb(:user_profile)
​
end
​
get "/hours/ago/:number" do
	 @current_time = Time.now 
​
	@number = params[:number]
	@new_time = @current_time-(@number.to_i * 60 * 60)
	erb(:hours_ago)
end