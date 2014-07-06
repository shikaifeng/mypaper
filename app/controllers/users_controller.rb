class UsersController < ApplicationController
    
def new 
  @user = User.new    
end

def index
  @users = User.all
end

def create  
  @user = User.create(user_params) 
  if @user.save
     redirect_to @user
  else
     render 'new'
  end
end 

def update
  @user = User.find(params[:id])
  @user.update(user_params)
  redirect_to @user
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to users_path
end

def edit
  @user = User.find(params[:id])

end

def show
  @user = User.find(params[:id])

end

private

# Use strong_parameters for attribute whitelisting# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:user).permit(:name,:description,:avatar)
end

end