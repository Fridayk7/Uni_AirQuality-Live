class Api::V1::DiseaseRecordsController < ApplicationController
  before_action :set_disease_record, only: [:show, :edit, :update, :destroy]

  # GET /disease_records
  # GET /disease_records.json
  def index
    @disease_records = DiseaseRecord.all
    render json: @disease_records
  end

  # GET /disease_records/1
  # GET /disease_records/1.json
  def show
    render json: @disease_records
  end



  # POST /disease_records
  # POST /disease_records.json
  def create
    @disease_record = DiseaseRecord.new(disease_record_params)

      if @disease_record.save
          render json: @disease_record, status: :created, location: api_v1_disease_records_url(@disease_record)
      else
        render json: @disease_record.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /disease_records/1
  # PATCH/PUT /disease_records/1.json
  def update

      if @disease_record.update(disease_record_params)
        render json: @disease_record
      else
        render json: @disease_record.errors, status: :unprocessable_entity
      end
  end

  # DELETE /disease_records/1
  # DELETE /disease_records/1.json
  def destroy
    @disease_record.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease_record
      @disease_record = DiseaseRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disease_record_params
      params.require(:disease_record).permit(:year, :region, :lc, :copd, :bronch, :asthma)
    end
end
