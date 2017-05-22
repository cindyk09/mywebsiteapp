class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :current_uri, :logged_in_and_admin

  # def current_uri(@project)
  #   request.env['PATH_INFO'] != '/projects/:id'
  # end


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def logged_in_and_admin
    logged_in? && current_user.admin
  end

  private
  def authenticate
    redirect_to root_path unless current_user
  end

  def is_admin?
    redirect_to root_path unless (current_user && current_user.admin)
  end
end
