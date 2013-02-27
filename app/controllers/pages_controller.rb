class PagesController < ApplicationController
  def home
  	require "rubygems"
	require "twitter"
	Twitter.configure do |config|
		config.consumer_key = 'MEBsYJdtOpw27jrHnHAsFQ'
		config.consumer_secret = 'vvbK8A8foAohBJwdJLwoWCXsSvyYifW6Yw9dcMjPaM' 
		config.oauth_token = '522381953-nT8jWVXXUitl2ZP0H7lZOtltuKg9wKsrwu5bnPAx'
		config.oauth_token_secret = 'eSKc5PHDymKsG7e3xM32RuBAUEppfKruoZY61KC5w'
	end
	@twitter_feed = Twitter.user_timeline("ladygaga").first.text

  end
  	

  def contact
  end

end
