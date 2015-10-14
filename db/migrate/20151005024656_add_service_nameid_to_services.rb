class AddServiceNameidToServices < ActiveRecord::Migration
  def change
    add_column :services, :service_nameid, :integer
  end
end
