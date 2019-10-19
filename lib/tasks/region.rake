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

  task seed_average: :environment do

    AverageRegion.destroy_all
    r = Region.last.id.to_i
    for i in 1..r do
      @region_data =  DiseaseRecord.where region_id: i
      puts @region_data
      @avg_total = 0
      @region_data.each do |year|
        @region= year.region.name
        @avg = year.lc + year.copd + year.bronch + year.asthma
        @avg = @avg/4
        @avg_total += @avg
      end
      AverageRegion.create!(
        region: @region,
        average: @avg_total/4.to_d
      )
    end
  end



    end
