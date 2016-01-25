class Blog
	attr_accessor :new_posts
	def initialize 
		@new_posts = []
	end

	def add_post(post)
		@new_posts.push(post)
	end

	def latest_posts
		@new_posts = @new_posts.sort {|post_a, post_b| post_b.date <=> post_a.date}
	end

end