class UserController < ApplicationController
  
  def toast_cookies
    reset_session

    redirect_to("/", { :notice => "See you soon!"})
  end

  def authenticate

  un = params.fetch("query_username")
  pw = params.fetch("query_password")

  user = User.where({ :username => un}).at(0)

  if user == nil
    redirect_to("/signin", { :alert => "No account matching this username"})
    else
      if user.authenticate(pw)
        session.store( :user_id, user.id)
        redirect_to("/", { :notice => "Welcome back, " + user.username + "!"})
      else
        redirect_to("/signin", { :alert => "Incorrect password"})
      end
    end
  end

  def feed
    render("user_templates/feed.html.erb")
  end

  def user_page

  input_username = params.fetch("path_username")

  matching_users = User.where({ :username => input_username})
  @the_user = matching_users.at(0)

  if @the_user == nil
    redirect_to("/")
  else
  render("user_templates/user_page.html.erb")
  end
  end

  def signup_form
    render("user_templates/signup.html.erb")
  end

  def new_session_form
    render("user_templates/signin.html.erb")
  end

  def create
    @user = User.new
    @user.username = params.fetch("query_username")
    @user.password = params.fetch("query_password")
    @user.password_confirmation = params.fetch("query_password_confirmation")

    save_status = @user.save

    if save_status == true
      session.store(:user_id, @user.id)
   
      redirect_to("/user/@user.username", { :notice => "Account created successfully!"})
    else
      redirect_to("/signup", { :alert => @user.errors.full_messages.to_sentence })
    end
  end
end
