class CreateIndustries < ActiveRecord::Migration[5.2]
  def change
    create_table :industries do |t|
      t.string :industry_name
      t.string :exchange_code
      t.string :sync_flag
      t.string :logo

      t.timestamps
    end
  end
end
