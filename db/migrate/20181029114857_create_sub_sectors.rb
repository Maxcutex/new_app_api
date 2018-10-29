class CreateSubSectors < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_sectors do |t|
      t.string :sub_sector_name
      t.references :main_sector, foreign_key: true

      t.timestamps
    end
  end
end
