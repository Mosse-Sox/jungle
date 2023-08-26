class UsersController < ApplicationController
  include SessionsHelper
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:notice] = 'User created successfully'
      redirect_to root_path
    else 
      flash[:alert] = 'Something went wrong! Try again. Contact Customer Service if the problem persists'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
  
end
