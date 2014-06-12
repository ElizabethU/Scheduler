class SessionsController < ApplicationController

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = "You have successfully signed in!"
			redirect_to meetings_path
		else
			flash[:notice] = "Invalid email/password. Please try again."
			redirect_to root_path
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "You have successfully logged out!"
		redirect_to root_path
	end

end
