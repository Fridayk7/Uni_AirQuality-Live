class AirqualityController < ApplicationController

  def index
    hash = CitiesController.new
    hash.index
    @cities = City.all
  end

  def safety
  end

end
