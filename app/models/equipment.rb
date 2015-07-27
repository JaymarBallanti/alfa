class Equipment < ActiveRecord::Base
	validates :equipment_name, :equipment_type, :plate_number, :quantity, presence: true
	belongs_to :project
end
