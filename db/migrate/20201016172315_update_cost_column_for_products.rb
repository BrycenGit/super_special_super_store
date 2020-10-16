class UpdateCostColumnForProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :cost, :decimal, precision: 10, scale: 2
  end
end
