class Project < ActiveRecord::Base

	validates :project_id_number, uniqueness: true
	validates :project_id_number, :project_name, :project_name, :location, :implementing_office, :date_of_award, 
	:date_of_contract, :date_started, :target_completion,:project_duration, :contract_amount, :item_of_works, presence: true

	has_one :manpower, dependent: :destroy
	has_many :equipments, dependent: :destroy
	has_many :time_extensions, dependent: :destroy
	has_many :revised_contract_amounts, dependent: :destroy	

	def self.item_of_works
		%w{ PCCP CCPP CPPC PCPC CPCP}
	end
end
