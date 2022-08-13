class AddNumberToConstructions < ActiveRecord::Migration[7.0]
  def change
    add_column :constructions, :Number, :string
  end
end
