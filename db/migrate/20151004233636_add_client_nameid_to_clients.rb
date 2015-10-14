class AddClientNameidToClients < ActiveRecord::Migration
  def change
    add_column :clients, :client_nameid, :integer 
  end
end
