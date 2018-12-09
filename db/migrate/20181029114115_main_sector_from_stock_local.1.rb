class MainSectorFromStockLocal < ActiveRecord::Migration[5.2]
  def change
    remove_column :stock_locals, :main_sector, :integer
  end
end
