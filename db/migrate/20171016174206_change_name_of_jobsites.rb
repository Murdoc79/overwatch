class ChangeNameOfJobsites < ActiveRecord::Migration[5.1]
def self.up
    rename_table :jobsites, :job_sites
  end

  def self.down
    rename_table :job_sites, :jobsites
  end
end
