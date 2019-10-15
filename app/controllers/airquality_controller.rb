class AirqualityController < ApplicationController
  def index
    @cities = City.all
    end



  def safety
  end

  def history
  end

end
