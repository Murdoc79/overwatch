class Supervisor < ApplicationRecord
	belongs_to :builder, optional: true
	has_many :job_sites
end
