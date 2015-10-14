class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.string :fee_name
      t.decimal :fee_price
      t.string :fee_category
      t.string :fee_notes

      t.timestamps null: false
    end
  end
end
