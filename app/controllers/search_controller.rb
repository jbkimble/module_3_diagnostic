class SearchController < ApplicationController

  def index
    @fuel_stations = NrelFuel.top_10_stations(params['q'])
  end
end
