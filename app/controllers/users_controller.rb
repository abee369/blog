class UsersController < ApplicationController
	before_action :temp_user
	def index
  	end

  	def show

  	end

	def new
  	end

	def edit
  	end

  	def create
  		@user= User.new(user_params)

	  	if @user.save
	  		redirect_to @user
	  	else
	  		render 'new'
	  	end
  	end

  	def destory
  	end

  	def update
  	end

  

private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def temp_user
  	@user = User.new
  end

end
