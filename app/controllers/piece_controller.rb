class PieceController < ApplicationController

def show_pieces

render("piece_templates/feed.html.erb")

end

def new_piece_form

render("piece_templates/new_piece_form.html.erb")

end

def piece_details

  input_piece = params.fetch("url_piece")

  matching_pieces = Piece.where({ :id => input_piece})
  @the_piece = matching_pieces.at(0)

  if @the_piece == nil
    redirect_to("/")
  else
  render("piece_templates/show.html.erb")
  end
  
end

def create
  @piece = Piece.new
  @piece.name = params.fetch("query_name")
  @piece.brand = params.fetch("query_brand")
  @piece.style = params.fetch("query_style")
  @piece.image = params.fetch("query_image")
  save_status = @piece.save

  if save_status == true
 
    redirect_to("/pieces/<%=@piece.id%>", { :notice => "Item added successfully!"})
  else
    redirect_to("/create_piece", { :alert => @piece.errors.full_messages.to_sentence })
  end
end


end