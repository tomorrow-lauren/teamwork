class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(username: params[:user][:username])
    # If the user exists AND the password entered is correct.
    if user = User.find_by(username: params[:user][:username]).try(:authenticate, params[:user][:password])
      # Save the user id inside the browser cookie.
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end