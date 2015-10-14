class AddJobClientToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_client, :string
  end
end
