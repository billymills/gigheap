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

	describe "postjob" do
		before { visit postjob_path }

		let(:submit) { "Create a job" }

		describe "with invalid information" do
			it "should not create a job" do
				expect { click_button submit }.not_to change(Job, :count)
			end
		end

		describe "with valid information" do
			before do
				fill_in "Title", 		with: "Example Title"
				fill_in "Company", 		with: "Example Company"
				fill_in "Location", 	with: "Example Location"
			end

			it "should create a job" do
				expect { click_button submit }.to change(Job, :count).by(1)
			end
		end
	end
end
