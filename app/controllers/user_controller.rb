class UserController < ApplicationController
  def new
	    @all_users = User.all
    	@user = User.new
  end

  def create
  		puts params
		User.create!(username: params[:username] , email: params[:email], bio: params[:bio]) 
# 		@user_params = params[:user]
#		User.create(username: @user_params[:username], email: @user_params[:email], bio: @user_params[:bio])
		redirect_to "/user/new"
  	end
end

  def redirect
		redirect_to "/user/new"
  	end
end
