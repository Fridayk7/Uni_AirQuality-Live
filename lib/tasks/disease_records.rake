require 'csv'
namespace :disease_records do
  desc "TODO"
  task seed_disease_records: :environment do

    #drop the old table data before importing the new stuff
    DiseaseRecord.destroy_all

    CSV.foreach("lib/assets/BreatheFree Historical Data.csv", :headers => true) do |row|
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      DiseaseRecord.create!(
          year: row[0].to_i,
          region: row[1],
          lc: row[2].to_i,
          copd: row[3].to_i,
          bronch: row[4].to_i,
          asthma: row[5].to_i)

    end
  end
end
