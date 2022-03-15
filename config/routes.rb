Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
get("/", { :controller => "user", :action => "feed" })

get("/signup", { :controller => "user", :action => "signup_form" })        

post("/insert_user", { :controller => "user", :action => "create"  })
end
