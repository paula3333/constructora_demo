class CreateConstructionMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :construction_materials do |t|
      t.references :material, null: false, foreign_key: true
      t.references :construction, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
