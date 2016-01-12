require_relative("lib/blog_class.rb")
require_relative("lib/post.rb")
require_relative("lib/Sponsored.rb")

# require 'colorize'

# Post title1
# **************
# Post1 text
# ----------------
# Post title 2
# **************
# Post 2 text
# ----------------
# Post title 3
# **************
# Post 3 text
# ----------------

blog = Blog.new
blog.add_post Post.new("First", Time.now, "First text here")
blog.add_post Post.new("Third", Time.new(2002, 12, 1), "Third text here")
blog.add_post Sponsored.new("Second", Time.new(2004, 12, 4), "Second text here")



blog.publish_front_page