class UsersController < ApplicationController


  def show
     @user = current_user
     @items = @user.items
  end

  # def create
  #   @user = User.new
  #   @user.name = params[:user][:name]
  #   @user.email = params[:user][:email]
  #   @user.password = params[:user][:password]
  #   @user.password_confirmation = params[:user][:password_confirmation]
  #   @use.height = params[:user][:height]
  # end



end
