class CreateJobsites < ActiveRecord::Migration[5.1]
  def change
    create_table :jobsites do |t|
      t.string :address

      t.timestamps
    end
  end
end
