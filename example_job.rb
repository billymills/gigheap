class Job
	attr_accessor :title, :company, :location

	def initialize(attributes = {})
		@title = attributes[:title]
		@company = attributes[:company]
		@location = attributes[:location]
	end
end
