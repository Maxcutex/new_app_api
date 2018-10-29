class CreateMainSectors < ActiveRecord::Migration[5.2]
  def change
    create_table :main_sectors do |t|
      t.string :sector_name

      t.timestamps
    end
  end
end
