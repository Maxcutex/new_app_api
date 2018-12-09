class AddIndustryToStockLocal < ActiveRecord::Migration[5.2]
  def change
    add_reference :stock_locals, :industry, foreign_key: true
  end
end
