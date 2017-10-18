class AddForeignKeyToJobSite < ActiveRecord::Migration[5.1]
	def change
		change_table :job_sites do |t|
			t.belongs_to :area, index: true
		end
	end
end
