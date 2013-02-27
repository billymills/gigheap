class PagesController < ApplicationController
  def home
  	require "rubygems"
	require "twitter"
	Twitter.configure do |config|
		config.consumer_key = Figaro.env.consumer_key
		config.consumer_secret = Figaro.env.consumer_secret
		config.oauth_token = Figaro.env.oauth_token
		config.oauth_token_secret = Figaro.env.oauth_token_secret
	end

	# pull three recent tweets from lady gaga
	@tweets = Twitter.user_timeline("ladygaga", :count => 3, :result_type => "recent")
	
	# @twitter_feed = Twitter.user_timeline("ladygaga").first.text

  end
  	

  def contact
  end

end
