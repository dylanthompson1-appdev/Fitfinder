Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
get("/", { :controller => "user", :action => "feed" })

get("/signup", { :controller => "user", :action => "signup_form" })        

post("/insert_user", { :controller => "user", :action => "create"  })

get("/signout", { :controller => "user", :action => "toast_cookies"})

get("/signin", { :controller => "user", :action => "new_session_form"})

post("/verify_user", { :controller => "user", :action => "authenticate"})

get("/user", { :controller => "user", :action => "user_list"})

get("/user/:path_username", { :controller => "user", :action => "user_page"})

get("/pieces", { :controller => "piece", :action => "show_pieces"})

get("/pieces/:url_piece", { :controller => "piece", :action => "piece_details"})

get("/create_piece", { :controller => "piece", :action => "new_piece_form"})

post("/insert_piece", { :controller => "piece", :action => "create"})

get("/new_post/:url_piece", { :controller => "post", :action => "new_post_form"})

post("/insert_post", { :controller => "post", :action => "create"})

get("/post/:post_id", { :controller => "post", :action => "show"})

get("/delete_post/:post_id", { :controller => "post", :action => "toast"})

get("/follow/:followed_id", { :controller => "follower", :action => "follow"})

get("/unfollow/:followed_id", { :controller => "follower", :action => "unfollow"})
end
