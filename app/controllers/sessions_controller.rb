class SessionsController < ApplicationController

  def new
  end

  def create
   @user = User.find_by_email(user_params[:email])
  # If the user exists AND the password entered is correct.
  	if @user && @user.authenticate(user_params[:password])
  # Save the user id inside the browser cookie. This is how we keep the user 
  # logged in when they navigate around our website.
     log_in @user
     redirect_to user_path(current_user)
    else
      # If user's login doesn't work, send them back to the login form.
        flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
    end
  end

  def log_out
  session[:user_id] = nil
  redirect_to '/'
  end

  private


  def user_params
        params.require(:session).permit(:name, :email, :password)
  end
end
