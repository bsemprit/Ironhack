require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe "Blog" do

	before :each do
		@blog = Blog.new
		#title, date, text
		@blog.add_post Post.new(1, "First Post", Time.new(2016, 1, 12), "The train was on fire and I had to get off.")
		@blog.add_post Post.new(2, "Second Post", Time.new(2016, 1, 13), "The next train was super packed and I stood but it was really nice.")
		@blog.add_post Post.new(3, "Third Post", Time.new(2016, 1, 14), "Now I am making a new blog set online and it's much easier. I can't believe this is the second week, I have learned so much!")
	end

	describe '#blog works' do
	  it 'makes a new array' do
	  	expect(@blog.new_posts.size).to eq(3)
	  end

	  it "adds to the empty array" do
	  	expect(@blog.new_posts[0].title).to eq("First Post")
	  end

	  it 'sorts posts by latest one' do
	  	@blog.latest_posts
	  	expect(@blog.new_posts[0].title).to eq("Third Post")
	  end

	end

end