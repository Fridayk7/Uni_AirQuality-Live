class AirqualityController < ApplicationController
  def index
  # COUNTY DATABASE CREATE CODE(dont use more that one time, doesnt overwrite database):
  #hash = AirVisionService.new
  #parsed_response = hash.get_country()
  #n=1
  #while parsed_response["data"][n] != nil
  #---------not needed----------country = Country.find(n)
  #---------not needed--------country.name = parsed_response["data"][n]["country"]
  #Country.create!(name: parsed_response["data"][n]["country"])
  #n = n + 1
  #end
  # CITY DATABASE CREATE CODE(dont use more that one time, doesnt overwrite database):
  #hash = AirVisionService.new
  #parsed_response = hash.get_city("UK","Scotland")
  #n=1
  #while parsed_response["data"][n] != nil
  #City.create!(name: parsed_response["data"][n]["city"], state:"Scotland" ,country:"UK")
  #n =n +1
  #end

end

  def safety
  end

  def history
  end
end
