class CreateStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :structures do |t|
      t.string :structure_name
      t.string :structure_code
      t.integer :parent_id, null: true
      t.string :comment
      t.boolean :is_active
      t.references :structure_type, foreign_key: true

      t.timestamps
    end
  end
end
