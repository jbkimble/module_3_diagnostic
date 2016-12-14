class SearchController < ApplicationController

  def index
    NrelFuel.top_10_stations(params['q'])

    # uri = URI("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?location=#{params['q']}&status=E&fuel_type=LPG,ELEC&api_key=JMD70usgOO1tUrJtyJKDSTb2B2yHdKMbq4SOfj3S")
    # response = Net::HTTP.get(uri)
    # parsed_json = JSON.parse(response, :symbolize_names => true)
    # @fuel_stations =  NrelFuel.top_10_stations(parsed_json)
  end
end
