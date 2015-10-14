class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :client_name
      t.string :client_email
      t.string :client_phone
      t.string :client_streetaddress
      t.string :client_floor
      t.string :client_specialinstructions

      t.timestamps null: false
    end
  end
end
