# Paraskevas Kleanthous

class AverageRegionsController < ApplicationController
  before_action :set_average_region, only: [:show, :edit, :update, :destroy]

  # GET /average_regions
  # GET /average_regions.json
  def index
    @average_regions = AverageRegion.all
  end

  # GET /average_regions/1
  # GET /average_regions/1.json
  def show
  end

  # GET /average_regions/new
  def new
    @average_region = AverageRegion.new
  end

  # GET /average_regions/1/edit
  def edit
  end

  # POST /average_regions
  # POST /average_regions.json
  def create
    @average_region = AverageRegion.new(average_region_params)

    respond_to do |format|
      if @average_region.save
        format.html { redirect_to @average_region, notice: 'Average region was successfully created.' }
        format.json { render :show, status: :created, location: @average_region }
      else
        format.html { render :new }
        format.json { render json: @average_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /average_regions/1
  # PATCH/PUT /average_regions/1.json
  def update
    respond_to do |format|
      if @average_region.update(average_region_params)
        format.html { redirect_to @average_region, notice: 'Average region was successfully updated.' }
        format.json { render :show, status: :ok, location: @average_region }
      else
        format.html { render :edit }
        format.json { render json: @average_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /average_regions/1
  # DELETE /average_regions/1.json
  def destroy
    @average_region.destroy
    respond_to do |format|
      format.html { redirect_to average_regions_url, notice: 'Average region was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_average_region
      @average_region = AverageRegion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def average_region_params
      params.require(:average_region).permit(:region, :average)
    end
end
