class AddForeignKeyToSupervisor < ActiveRecord::Migration[5.1]
  def change
  	change_table :supervisors do |t|
  		t.belongs_to :builder, index: true
  	end
  end
end
