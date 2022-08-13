class CreateConstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :constructions do |t|
      t.string :name
      t.date :initial_date
      t.date :end_date
      t.integer :cost

      t.timestamps
    end
  end
end
