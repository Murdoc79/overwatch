class Builder < ApplicationRecord
	has_many :job_sites
	has_many :supervisors
end
