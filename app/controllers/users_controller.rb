class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: { message: 'User created successfully' }, status: :created
    else 
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  
end