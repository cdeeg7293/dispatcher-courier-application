class RemoveServiceBasepriceFromServices < ActiveRecord::Migration
  def change
    remove_column :services, :service_baseprice, :integer
    add_column :services, :service_baseprice, :decimal
  end
end
