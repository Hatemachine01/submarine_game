class UsersController < ApplicationController

before_action :logged_in_user, except: [:new, :create]


def new
@user = User.new	
end

def create
  @user = User.new(user_params)
  if @user.save
    session[:user_id] = @user.id
    redirect_to @user
  else
    render 'new'
  end
end


def show
end




def logged_in_user
	unless logged_in?
     flash[:danger] = "Please log in."
     redirect_to login_url
	end
end





private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

end
