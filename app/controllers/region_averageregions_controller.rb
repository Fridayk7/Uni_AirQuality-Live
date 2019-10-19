class RegionAverageregionsController < ApplicationController
  before_action :set_region_averageregion, only: [:show, :edit, :update, :destroy]

  # GET /region_averageregions
  # GET /region_averageregions.json
  def index
    @region_averageregions = RegionAverageregion.all
  end

  # GET /region_averageregions/1
  # GET /region_averageregions/1.json
  def show
  end

  # GET /region_averageregions/new
  def new
    @region_averageregion = RegionAverageregion.new
  end

  # GET /region_averageregions/1/edit
  def edit
  end

  # POST /region_averageregions
  # POST /region_averageregions.json
  def create
    @region_averageregion = RegionAverageregion.new(region_averageregion_params)

    respond_to do |format|
      if @region_averageregion.save
        format.html { redirect_to @region_averageregion, notice: 'Region averageregion was successfully created.' }
        format.json { render :show, status: :created, location: @region_averageregion }
      else
        format.html { render :new }
        format.json { render json: @region_averageregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /region_averageregions/1
  # PATCH/PUT /region_averageregions/1.json
  def update
    respond_to do |format|
      if @region_averageregion.update(region_averageregion_params)
        format.html { redirect_to @region_averageregion, notice: 'Region averageregion was successfully updated.' }
        format.json { render :show, status: :ok, location: @region_averageregion }
      else
        format.html { render :edit }
        format.json { render json: @region_averageregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /region_averageregions/1
  # DELETE /region_averageregions/1.json
  def destroy
    @region_averageregion.destroy
    respond_to do |format|
      format.html { redirect_to region_averageregions_url, notice: 'Region averageregion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region_averageregion
      @region_averageregion = RegionAverageregion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_averageregion_params
      params.require(:region_averageregion).permit(:average)
    end
end
