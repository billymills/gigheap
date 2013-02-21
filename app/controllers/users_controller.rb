class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		#this is the same as using User.find(1) in the console
	end

  	def new
		@user = User.new
  	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:success] = "Welcome to Gigheap!"
			redirect_to @user
		else
			# If not successful/false return to new page
			render 'new'
		end
	end
end
