class HistoricalController < ApplicationController

  def index
    if params[:commit] == "Go!"
      ## From StackOverflow https://stackoverflow.com/questions/26425083/rails-console-shows-view-is-rendered-but-doesnt-render-in-browser
      respond_to do |format|
        format.js { render :js => "window.location.href = '#{historical_result_path(year: params[:search_year], region: params[:search_region])}'" }
      end
      ##
    else
      @years = DiseaseRecord.select('distinct(year)')
      @regions = DiseaseRecord.select('distinct(region)')
    end

    def result
      @search_year = params[:year]
      @search_region = params[:region]
      @data_list = nil

      if @search_year != nil and @search_region != nil
        # @data_object = DiseaseRecord.find_by_sql("SELECT lc, copd, bronch, asthma FROM disease_records WHERE year=\"" + @search_year + "\" AND region=\"" + @search_region + "\"")
        @data_list = DiseaseRecord.where(year: @search_year, region: @search_region).pluck(:lc, :copd, :bronch, :asthma)
      end
    end
  end
end
