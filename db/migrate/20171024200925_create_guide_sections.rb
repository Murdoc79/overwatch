class CreateGuideSections < ActiveRecord::Migration[5.1]
  def change
    create_table :guide_sections do |t|
      t.string :title

      t.timestamps
    end
  end
end
