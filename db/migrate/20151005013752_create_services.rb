class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :service_name
      t.integer :service_baseprice
      t.string :service_notes
      t.string :service_duetime

      t.timestamps null: false
    end
  end
end
