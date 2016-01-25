require 'sinatra'
require 'sinatra/reloader' if development?
enable(:sessions)

login_users= {
	#user --> password
	"bianca" => "bianca",
	"guest" => "guest",
	"anna" => "anna"
}

get "/" do
	
	if session[:users] == "wrong"
		@wrong = "You entered the wrong username or password"
		erb(:home)
	elsif session[:users] !=nil		
		erb(:home_user)
	else
		erb(:home)
	end
end

post "/login" do
	@username = params[:user_name]
	@password = params[:password]

	login_users.each do |user_name, pass|
		if @username == user_name && @password == pass
			session[:users] = user_name
		elsif (@username == user_name && @pass!=pass) || (@username != user_name && @password ==pass)
			session[:users] = "wrong"
		end
	end

	redirect to("/")
end

post "/logout" do
	session[:users] = nil

	redirect to("/")
end