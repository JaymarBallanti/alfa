class TimeExtension < ActiveRecord::Base
	validates :date_from, :date_to, :number_of_days, presence: true
	belongs_to :project

	def inclusive_dates_of_extension
		"#{date_from} - #{date_to }"
	end
end
