class NrelFuel
  def initialize(attributes={})
      @name = attributes[:station_name]
      @address = attributes[:station_name]
      @fuel_type = attributes[:station_name]
      @distance = attributes[:station_name]
      @access_times = attributes[:station_name]
  end


  def self.top_10_stations(parsed_json)
    parsed_json[:fuel_stations][0..9]
  end
  
end
