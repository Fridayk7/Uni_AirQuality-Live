class Api::V1::CitiesController < ApplicationController

  before_action :set_city, only: [:show, :edit, :update, :destroy]

  # GET /cities
  # GET /cities.json
  def index
  @cities = City.all
  if !City.exists?
    City.create!(name: "Aberdeen", state:"Scotland" ,country:"UK")
    City.create!(name: "Cardiff", state:"Wales" ,country:"UK")
    City.create!(name: "Edinburgh", state:"Scotland" ,country:"UK")
    City.create!(name: "London", state:"England" ,country:"UK")
    City.create!(name: "Manchester", state:"England" ,country:"UK")
  end
  hash = AirVisionService.new
  @cities.each do |city|
    @response = hash.get_city_data(city.name,city.state,city.country)
    if !@response["message"]
      city.update_column(:aqius, @response["current"]["pollution"]["aqius"])
      city.update_column(:mainus, @response["current"]["pollution"]["mainus"])
      city.update_column(:lat, @response["location"]["coordinates"][0])
      city.update_column(:lon, @response["location"]["coordinates"][1])
    end
  end
  render json: @cities
end

  # GET /cities/1
  # GET /cities/1.json
  def show
      render json: @cities
  end

  def create
    @city = City.new(city_params)

      if @city.save
          render json: @cities, status: :created, location: api_v1_cities_url(@cities)
      else
        render json: @cities.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update

      if @city.update(city_params)
        render json: @cities
      else
        render json: @cities.errors, status: :unprocessable_entity
      end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:name, :state, :country)
    end
end
