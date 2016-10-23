#Linking my library of classess to the app_page
require_relative("lib/blog.rb")
require_relative("lib/post.rb")

Ikes_Blog  = Blog.new()
Ikes_Post = Post.new("today's post","10/18","I am at Ironhack")
Ikes_Post_2 = Sponsor_Post.new("Second Post of the Day","10/18","This is sponsored by SPOTIFY")
Ikes_Post_3 = Post.new("Post Number 3","10/19","Still at Ironhack")
Ikes_Post_4 = Post.new("Post Number 4","10/19","Now at the Gym")
Ikes_Post_5 = Post.new("Post Number 5","10/20","Now at Work")
Ikes_Post_6 = Sponsor_Post.new("Post Number 6","10/20","Brought to you by FACEBOOK")
Ikes_Post_7 = Sponsor_Post.new("Post Number 7","10/21,","This is also sponsored by YOUTUBE")
Ikes_Post_8 = Post.new("Post Number 8","10/21","I am finally home")

Ikes_Blog.add_post_method(Ikes_Post)
Ikes_Blog.add_post_method(Ikes_Post_2)
Ikes_Blog.add_post_method(Ikes_Post_3)
Ikes_Blog.add_post_method(Ikes_Post_4)
Ikes_Blog.add_post_method(Ikes_Post_5)
Ikes_Blog.add_post_method(Ikes_Post_6)
Ikes_Blog.add_post_method(Ikes_Post_7)
Ikes_Blog.add_post_method(Ikes_Post_8)

Ikes_Blog.publish_front_page