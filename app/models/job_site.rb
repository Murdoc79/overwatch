class JobSite < ApplicationRecord

	belongs_to :supervisor
	belongs_to :builder
	belongs_to :building_stage
	belongs_to :area
	has_many :notes

end
