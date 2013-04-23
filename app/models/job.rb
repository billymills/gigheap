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

class Job < ActiveRecord::Base
	# following are the attributes of the model
	# and are automatically accessible to the user
  	attr_accessible :company, :location, :title, :link

	validates :title, presence: true, length: { maximum: 50 }
	validates :company, presence: true, length: { maximum: 50 }
	validates :location, presence: true, length: { maximum: 50 }
	validates :link, presence: true, length: {maximum: 255 }
end
