class CreateDiseases < ActiveRecord::Migration[5.2]
  def change
    create_table :diseases do |t|
      t.integer :year
      t.string :region
      t.integer :lc
      t.integer :copd
      t.integer :bronch
      t.integer :asthma

      t.timestamps
    end
  end
end
