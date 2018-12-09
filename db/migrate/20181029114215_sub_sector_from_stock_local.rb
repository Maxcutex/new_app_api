class SubSectorFromStockLocal < ActiveRecord::Migration[5.2]
  def change
    remove_column :stock_locals, :sub_sector, :integer
  end
end
