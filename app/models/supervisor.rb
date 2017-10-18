class Supervisor < ApplicationRecord
	belongs_to :builder
	has_many :job_sites
end
