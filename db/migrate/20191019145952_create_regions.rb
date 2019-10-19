class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string :name
      t.integer :population
      t.integer :area

      t.timestamps
    end
  end
end
