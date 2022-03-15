Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
get("/", { :controller => "user", :action => "feed" })

get("/signup", { :controller => "user", :action => "signup_form" })        

post("/insert_user", { :controller => "user", :action => "create"  })

get("/signout", { :controller => "user", :action => "toast_cookies"})

get("/signin", { :controller => "user", :action => "new_session_form"})

post("/verify_user", { :controller => "user", :action => "authenticate"})

get("/user/:path_username", { :controller => "user", :action => "user_page"})

get("/pieces", { :controller => "piece", :action => "show_pieces"})

get("/pieces/:url_piece", { :controller => "piece", :action => "piece_details"})
end
