
require "sinatra"
require "sinatra/reloader" if development?
require "pry"

require_relative("lib/passwordchecker.rb")

enable(:sessions)

get "/" do 
	erb(:login)
end

post "/success" do
	email = params[:email]
	password = params[:password]
	login = PasswordChecker.new(email, password)
	if login.check_password == true
	erb(:success)
	else
	"The princess is in another house go away"
	end
end