class SessionsController < ApplicationController
  include SessionsHelper
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
    else 
      flash.now[:alert] = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
