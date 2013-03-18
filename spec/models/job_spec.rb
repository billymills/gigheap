# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  compay     :string(255)
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Job do

	before { @job = Job.new(title: "Example Job", company: "Example Company", location: "Example Location") }

	subject { @job }

	it { should respond_to(:title) }
	it { should respond_to(:company) }
	it { should respond_to(:location) }

	# the following just verifies that the the @job object is initially valid
	it { should be_valid }

	# the following test sets the title to blank value, then
	# tests to see that it is invalid
	describe "when title is not present" do
		before { @job.title = " " }
		it { should_not be_valid }
	end

	describe "when company is not present" do
		before { @job.company = " " }
		it { should_not be_valid }
	end

	describe "when location is not present" do
		before { @job.company = " " }
		it { should_not be_valid }
	end

	describe "when title is too long" do
		before { @job.title = "b" * 51 }
		it { should_not be_valid }
	end

	describe "when company is too long" do
		before { @job.company = "c" * 51 }
		it { should_not be_valid }
	end

	describe "when location is too long" do
		before { @job.location = "d" * 51 }
		it { should_not be_valid }
	end

end
