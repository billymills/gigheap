class PagesController < ApplicationController
  def home
  	require "rubygems"
	require "twitter"
	require "tweetstream"

	Twitter.configure do |config|
		config.consumer_key = Figaro.env.consumer_key
		config.consumer_secret = Figaro.env.consumer_secret
		config.oauth_token = Figaro.env.oauth_token
		config.oauth_token_secret = Figaro.env.oauth_token_secret
	end

	# @tweets = Twitter.user_timeline("Mr_Hairston15", :count => 5, :result_type => "recent")

	# attempting to pull tweets with search terms
	@tweets = Twitter.search("technology information jobs", :count => 5).results
	
	# @twitter_feed = Twitter.user_timeline("ladygaga").first.text

	# playing with streaming below
	
	# @statuses = []
	# TweetStream.configure do |config|
	#	config.consumer_key = Figaro.env.consumer_key
	#	config.consumer_secret = Figaro.env.consumer_secret
	#	config.oauth_token = Figaro.env.oauth_token
	#	config.oauth_token_secret = Figaro.env.oauth_token_secret
	# end
	
	# @client = TweetStream::Client.new.track('yankess') do |status|
	#	@statuses << status.text
	#	client.stop if @tweets.size >=5
	# end
	
	# fetch job info for front page here
	#@jobs = Job.all
	
	# return the first 8 records in jobs table
	@jobs = Job.find(:all, :limit => 8)

  end
  	
  def contact
  end

end
