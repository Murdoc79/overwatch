class AddForeignKeysToJobSite < ActiveRecord::Migration[5.1]
  def change
  	change_table :job_sites do |t|
  		t.belongs_to :builder, index: true
  		t.belongs_to :building_stage, index: true
  	end
  end
end
