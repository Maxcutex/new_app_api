class RemoveIndustryFromStockLocal < ActiveRecord::Migration[5.2]
  def change
    remove_column :stock_locals, :industry, :integer
  end
end
