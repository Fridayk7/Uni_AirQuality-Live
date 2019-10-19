class CreateDiseaseRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :disease_records do |t|
      t.integer :year
      t.references :region, foreign_key: true
      t.integer :lc
      t.integer :copd
      t.integer :bronch
      t.integer :asthma

      t.timestamps
    end
  end
end
