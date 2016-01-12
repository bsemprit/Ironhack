class Blog
	def initialize 
		@new_posts = []
	end
	def add_post (post)
		@post = post
		@new_posts.push(@post)
	end

	def publish_front_page
		wholepage = @new_posts.sort {|post_a, post_b| post_b.date <=> post_a.date}

		wholepage.each do |each_post|
			each_post.display
		end
	end
end