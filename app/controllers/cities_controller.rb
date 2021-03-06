# Paraskevas Kleanthous

class CitiesController < ApplicationController
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
      @last_update = @response["current"]["pollution"]["ts"]
      city.update_column(:aqius, @response["current"]["pollution"]["aqius"])
      city.update_column(:mainus, @response["current"]["pollution"]["mainus"])
      city.update_column(:lat, @response["location"]["coordinates"][0])
      city.update_column(:lon, @response["location"]["coordinates"][1])
    end
  end
end

  # GET /cities/1
  # GET /cities/1.json
  def show
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
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
