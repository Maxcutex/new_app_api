class AddSubSectorToStockLocal < ActiveRecord::Migration[5.2]
  def change
    add_reference :stock_locals, :sub_sector, foreign_key: true
  end
end
