class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
      reset_session
      redirect_to welcome_path, notice: "User not found. Sign in please!"
  end

  helper_method :current_user

  def check_for_sign_in
    if current_user == nil
      redirect_to sign_in_path
      flash[:notice] = "You need to sign in to do that."
    end
  end
end
