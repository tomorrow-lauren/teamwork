class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(username: params[:user][:username])
    p @user
    # If the user exists AND the password entered is correct.
    if @user && @user.authenticate(params[:user][:password]) != false
      # Save the user id inside the browser cookie.
      session[:user_id] = @user.id
      redirect_to '/profile'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end