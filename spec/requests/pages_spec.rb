require 'spec_helper'

describe "Pages" do
	describe "Home page" do
		before { visit root_path }
    
		it "should have the h1 'gigheap'" do
      		# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      		page.should have_selector('h1', :text => 'gigheap')
    	end
	
		it "should have the base title 'gigheap.com | Home'" do
			page.should have_selector('title', :text => 'gigheap.com')
		end

		it "should not have in the title 'Home'" do
			page.should_not have_selector('title', :text => '| Home')
		end
  	end

  	describe "Contact page" do
		before { visit contact_path }

		it "should have the h1 'Contact'" do
			page.should have_selector('h1', :text => 'Contact')
		end

		it "should have the title 'Contact'" do
			page.should have_selector('title', :text => 'Contact')
		end
  	end
end
