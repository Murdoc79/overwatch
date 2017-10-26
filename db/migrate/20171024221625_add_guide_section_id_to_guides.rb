class AddGuideSectionIdToGuides < ActiveRecord::Migration[5.1]
  def change
  	change_table :guides do |t|
  		t.belongs_to :guide_section, index: true
  	end
  end
end
