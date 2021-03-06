class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :logged_in?

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def logged_in?
    return false if current_user.nil?
    current_user.session_token == session[:session_token]
  end

  def log_in_user!(user)
    @current_user = user
    user.reset_session_token!
    session[:session_token] = user.session_token
    redirect_to bands_url
  end
end
