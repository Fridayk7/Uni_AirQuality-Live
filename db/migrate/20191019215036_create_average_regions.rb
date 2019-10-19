class CreateAverageRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :average_regions do |t|
      t.string :region
      t.string :average

      t.timestamps
    end
  end
end
