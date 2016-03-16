class SessionsController < ApplicationController
  skip_before_action :authenticate, only: [:create, :destroy]

  def new
      @user = User.new
  end

  def create
      user = User.authenticate!(params[:user][:email], params[:user][:password])
      if user
        session[:user_id] = user.id
        redirect_to dashboard_path
      else
        flash[:error] = "Bad E-mail or Password"
        redirect_to sessions_path
      end
    end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You have been logged out!"
  end
end
