class AddCityRefToConstructions < ActiveRecord::Migration[7.0]
  def change
    add_reference :constructions, :city, null: false, foreign_key: true
  end
end
