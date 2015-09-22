class SessionsController < ApplicationController

	def new
		
	end

	def create
		@user = User.find_by(username: session_params[:username]).try(:authenticate, session_params[:password])
		if @user
			session[:user_id] = @user.id
			redirect_to new_article_path
		else
			@error = 'Incorrect username, email or password'
			redirect_to new_login_path
		end
	end

	def destroy
		session.clear
		redirect_to root_path
	end

private
  def session_params
    params.require(:session).permit(:username, :password)
  end

end
