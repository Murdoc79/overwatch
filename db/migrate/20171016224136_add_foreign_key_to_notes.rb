class AddForeignKeyToNotes < ActiveRecord::Migration[5.1]
  def change
  	  	change_table :notes do |t|
  		t.belongs_to :job_site, index: true
  	end
  end
end
