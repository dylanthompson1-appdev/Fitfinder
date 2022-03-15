class UserController < ApplicationController
  def feed
    render("user_templates/feed.html.erb")
  end

  def signup_form
    render("user_templates/signup.html.erb")
  end

  def create
    @user = User.new
    @user.username = params.fetch("query_username")
    @user.password = params.fetch("query_password")
    @user.password_confirmation = params.fetch("query_password_confirmation")

    save_status = @user.save

    if save_status == true
      session[:user_id] = @user.id
   
      redirect_to("/", { :notice => "User account created successfully."})
    else
      redirect_to("/user_sign_up", { :alert => @user.errors.full_messages.to_sentence })
    end
  end
end
