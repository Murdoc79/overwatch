class CreateBuildingStages < ActiveRecord::Migration[5.1]
  def change
    create_table :building_stages do |t|
      t.string :stage

      t.timestamps
    end
  end
end
