class Manpower < ActiveRecord::Base
	validates :project_engineer, :materials_engineer, :project_foreman, presence: true
	belongs_to :project
end
