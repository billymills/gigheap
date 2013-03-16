require 'spec_helper'

describe "JobPages" do

	subject { page }

  	describe "postjob page" do
		before { visit postjob_path }

		it { should have_selector('h1', text: 'Post Job') }
		it { should have_selector('title', text: full_title('Post Job')) }
	end
end
