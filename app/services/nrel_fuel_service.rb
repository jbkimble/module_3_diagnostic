class NrelFuelService

  def fuel_stations(zipcode)
    uri = URI("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?location=#{zipcode}&status=E&fuel_type=LPG,ELEC&api_key=JMD70usgOO1tUrJtyJKDSTb2B2yHdKMbq4SOfj3S")
    response = Net::HTTP.get(uri)
    parsed_json = JSON.parse(response, :symbolize_names => true)
    parsed_json[:fuel_stations][0..9]
  end

end
