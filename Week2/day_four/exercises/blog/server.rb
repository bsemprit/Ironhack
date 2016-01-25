require_relative("lib/blog.rb")
require_relative("lib/post.rb")

require "sinatra"
require "sinatra/reloader"

blog = Blog.new
#title, date, text
blog.add_post Post.new(1, "First Post", Time.new(2016, 1, 12), "The train was on fire and I had to get off.")
blog.add_post Post.new(2, "Second Post", Time.new(2016, 1, 13), "The next train was super packed and I stood but it was really nice.")
blog.add_post Post.new(3, "Third Post", Time.new(2016, 1, 14), "Now I am making a new blog set online and it's much easier. I can't believe this is the second week, I have learned so much!")
sorted_posts = blog.latest_posts

get "/" do
	@posts = sorted_posts
	erb :home
end

get "/post/:id" do
	@post_id = params[:id].to_i
	@post = blog.new_posts[@post_id - 1]
	erb :post_content
end

