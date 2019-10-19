class DiseaseRecordsController < ApplicationController
  before_action :set_disease_record, only: [:show, :edit, :update, :destroy]

  # GET /disease_records
  # GET /disease_records.json
  def index
    @disease_records = DiseaseRecord.all
  end

  # GET /disease_records/1
  # GET /disease_records/1.json
  def show
  end

  # GET /disease_records/new
  def new
    @disease_record = DiseaseRecord.new
  end

  # GET /disease_records/1/edit
  def edit
  end

  # POST /disease_records
  # POST /disease_records.json
  def create
    @disease_record = DiseaseRecord.new(disease_record_params)

    respond_to do |format|
      if @disease_record.save
        format.html { redirect_to @disease_record, notice: 'Disease record was successfully created.' }
        format.json { render :show, status: :created, location: @disease_record }
      else
        format.html { render :new }
        format.json { render json: @disease_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disease_records/1
  # PATCH/PUT /disease_records/1.json
  def update
    respond_to do |format|
      if @disease_record.update(disease_record_params)
        format.html { redirect_to @disease_record, notice: 'Disease record was successfully updated.' }
        format.json { render :show, status: :ok, location: @disease_record }
      else
        format.html { render :edit }
        format.json { render json: @disease_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disease_records/1
  # DELETE /disease_records/1.json
  def destroy
    @disease_record.destroy
    respond_to do |format|
      format.html { redirect_to disease_records_url, notice: 'Disease record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease_record
      @disease_record = DiseaseRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disease_record_params
      params.require(:disease_record).permit(:year, :region_id, :lc, :copd, :bronch, :asthma)
    end
end
