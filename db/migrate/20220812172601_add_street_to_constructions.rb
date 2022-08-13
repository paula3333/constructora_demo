class AddStreetToConstructions < ActiveRecord::Migration[7.0]
  def change
    add_column :constructions, :street, :string
  end
end
