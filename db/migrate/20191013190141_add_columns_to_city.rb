class AddColumnsToCity < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :aqius, :string
    add_column :cities, :mainus, :string
  end
end
