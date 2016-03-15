class SessionsController < ApplicationController
  skip_before_action :authenticate, only: [:create, :destroy]

  def new
      @user = User.new
  end

  def create
    binding.pry
      user = User.authenticate!(params[:user][:email], params[:user][:password])
      if user
        session[:user_id] = user.id
        redirect_to user_path(user)
      else
        flash[:error] = "Bad E-mail or Password"
        redirect_to sessions_path
      end
    end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, loggedout: "You have been logged out!"
  end
end
