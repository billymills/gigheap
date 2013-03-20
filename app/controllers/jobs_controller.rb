class JobsController < ApplicationController
  	def show
  		# the following retrieves the user from the database
  		@job = Job.find(params[:id])
	end
  
  	def new
		@job = Job.new
  	end

	def create

		# the following line is equivalent to
		# Job.new(title: "example", company: "example", location: "example"
		# it's a hash of hashes

		@job = Job.new(params[:job])
		if @job.save
			flash[:success] = "This submission has just been tweeted!"
			redirect_to @job
			# I think this is where I should send the tweet from
		else
			render 'new'
		end
	end
end
