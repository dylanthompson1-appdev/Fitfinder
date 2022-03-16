class PostController < ApplicationController

def toast

the_id = params.fetch("post_id")

matching_posts = Post.where( :id => the_id)

the_post = matching_posts.at(0)

if the_post.owner_id == session[:user_id]
the_post.destroy
redirect_to("/")

else
redirect_to("/")
end
end

def new_post_form

@item_id = params.fetch("url_piece")
@the_item = Piece.where( :id => @item_id).at(0)
render("/post_templates/new_post_form.html.erb")

end

def create
  @post = Post.new
  @post.image = params.fetch("query_image")
  @post.caption = params.fetch("query_caption")
  @post.owner_id = params.fetch("query_user_id")
  @post.item_id = params.fetch("query_item_id")
  save_status = @post.save

  if save_status == true
  user_id = session[:user_id]
  poster = User.where( :id => user_id).at(0)
    redirect_to("/user/#{poster.username}", { :notice => "Post created successfully!"})
  else
    redirect_to("/new_post_form", { :alert => @post.errors.full_messages.to_sentence })
  end
end

def show

render("/post_templates/show.html.erb")

end 

end