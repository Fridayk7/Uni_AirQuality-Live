# Andrei Rotariu

class HistoricalController < ApplicationController
  # Choosing a chart. Seeing diagnoses totals data.
  def index
    if params[:commit] == "Go!"
      ## From StackOverflow https://stackoverflow.com/questions/26425083/rails-console-shows-view-is-rendered-but-doesnt-render-in-browser
      respond_to do |format|
        format.js { render :js => "window.location.href = '#{historical_result_path(year: params[:search_year], region: params[:search_region])}'" }
      end
      ##
    else

      @years = DiseaseRecord.select('distinct(year)')
      @regions = Region.all
    end

    # Adding All Disease Diagnoses For Each Year Together.
    @totals = []
    (2006..2012).each { |current_year|
      @total_for_year = 0
      DiseaseRecord.where(year: current_year.to_s).each { |a|
        @total_for_year += (a.lc + a.copd + a.bronch + a.asthma)
      }
      @totals << @total_for_year
    }


  end

  # Showing the chart result.
  def result
    @search_year = params[:year]
    @search_region = params[:region]
    @data_list = nil
    if @search_year != nil and @search_region != nil
      @region_name = Region.find(@search_region).name
      @population = Region.find(@search_region).population
      @area = Region.find(@search_region).area
      @data_list = DiseaseRecord.where(year: @search_year, region: @search_region).pluck(:lc, :copd, :bronch, :asthma)
    end
  end
end
