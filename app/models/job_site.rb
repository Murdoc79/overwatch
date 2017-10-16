class JobSite < ApplicationRecord

	belongs_to :builder
	belongs_to :building_stage

end
