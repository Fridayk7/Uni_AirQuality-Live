require 'csv'
namespace :region do
  desc "TODO"

  task seed_region: :environment do

    Region.destroy_all

    CSV.foreach("lib/assets/BreatheFree Regional Data.csv", :headers =>true) do |row |
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      Region.create!(
      name: row[0].to_s,
      population: row[1].to_i,
      area: row[2].to_i,
    )
    end
  end

  task seed_diseases: :environment do

    DiseaseRecord.destroy_all

    CSV.foreach("lib/assets/BreatheFree Historical Data.csv", :headers =>true) do |row|
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      DiseaseRecord.create!(
      year: row[0],
      region: Region.find_by(name:row[1]),
      lc:  row[2],
      copd: row[3],
      bronch: row[4],
      asthma: row[5]

    )
    end
  end

end
