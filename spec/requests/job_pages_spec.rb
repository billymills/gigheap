require 'spec_helper'

describe "JobPages" do

	subject { page }

  	describe "show job page" do
		let(:job) { FactoryGirl.create(:job) }
		before { visit job_path(job) }

		it { should have_selector('h1', 	text: job.title) }
		it { should have_selector('title', 	text: job.title) }
	end

	describe "postjob page" do
		before { visit postjob_path }

		it { should have_selector('h1', text: 'Post Job') }
		it { should have_selector('title', text: full_title('Post Job')) }
	end
end
