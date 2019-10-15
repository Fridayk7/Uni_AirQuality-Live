class AddCoordsToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :lat, :string
    add_column :cities, :lon, :string
  end
end
