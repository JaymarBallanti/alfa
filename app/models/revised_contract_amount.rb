class RevisedContractAmount < ActiveRecord::Base
	validates :amount, presence: true
	belongs_to :project
end
