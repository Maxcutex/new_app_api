class CreateStockLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :stock_locals do |t|
      t.string :sec_code
      t.string :sec_name
      t.string :exchange_code
      t.string :asset_class_coce
      t.integer :main_sector
      t.integer :sub_sector
      t.string :contact
      t.string :description
      t.string :tier_code
      t.string :par_value
      t.date :list_date
      t.decimal :outstanding_shares
      t.string :grp_code
      t.string :registrar
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :state_code
      t.string :website
      t.string :email
      t.string :gsm
      t.string :land_tel
      t.string :fax_no
      t.string :regis_close
      t.string :year_end
      t.string :logo
      t.integer :shares_in_issue
      t.integer :capitalization
      t.integer :view_count

      t.timestamps
    end
  end
end
