require "sinatra"
require "artii"

get "/ascii/:word/:font" do 
	@font = params[:font]
	@word = params[:word]
	
	if @font = "epic"
		@cool_word = Artii::Base.new :font => 'epic' 
	
	else
	
	@cool_word = Artii::Base.new 
	end
	
	erb(:ascii)


end

