class JobsController < ApplicationController
	before_filter :signed_in_user, only:[:create]
  	def show
  		# the following retrieves the job from the database
  		@job = Job.find(params[:id])
	end
  
  	def new
		@job = Job.new
  	end

	def index
		@jobs = Job.paginate(page: params[:page])
	end

	def create
  		require "rubygems"
		require "twitter"
		require "tweetstream"
	
		# the following line is equivalent to
		# Job.new(title: "example", company: "example", location: "example"
		# it's a hash of hashes

		@job = Job.new(params[:job])
		if @job.save
			flash[:success] = "This submission has just been tweeted!"
			redirect_to @job
			# I think this is where I should send the tweet from

			Twitter.configure do |config|
				config.consumer_key = Figaro.env.consumer_key
				config.consumer_secret = Figaro.env.consumer_secret
				config.oauth_token = Figaro.env.oauth_token
				config.oauth_token_secret = Figaro.env.oauth_token_secret
			end

			# pull three recent tweets from lady gaga
			# @tweets = Twitter.user_timeline("Mr_Hairston15", :count => 5, :result_type => "recent")
			client = Twitter::Client.new
			client.update('A ' +@job.title+' position has just been posted at Gigheap, check it out! ' +@job.link)
		else
			render 'new'
		end
	end

	private
		def signed_in_user
			store_location
			redirect_to signin_url, notice: "Please sign in." unless signed_in?
		end
end
