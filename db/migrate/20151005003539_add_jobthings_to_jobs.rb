class AddJobthingsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_oversize, :string
    add_column :jobs, :job_overweight, :string
    add_column :jobs, :job_wait_time, :string
    add_column :jobs, :job_specialinstructions, :string
    add_column :jobs, :job_misc_charges, :string
  end
end
