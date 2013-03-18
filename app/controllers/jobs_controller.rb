class JobsController < ApplicationController
  	def show
  		# the following retrieves the user from the database
  		@job = Job.find(params[:id])
	end
  
  	def new
  	end
end
