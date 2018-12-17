class CreateStructureTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :structure_types do |t|
      t.string :structure_type_name
      t.string :description
      t.integer :parent_id, null: true
      t.boolean :is_active

      t.timestamps
    end
  end
end
