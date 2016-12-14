class NrelFuel
  attr_reader :name, :address, :fuel_type, :distance, :access_times

  def initialize(attributes={})
      @name = attributes[:station_name]
      @address = attributes[:street_address]
      @fuel_type = attributes[:fuel_type_code]
      @distance = attributes[:distance]
      @access_times = attributes[:access_days_time]
  end

  def self.top_10_stations(zipcode)
    NrelFuelService.new.fuel_stations(zipcode).map do |station|
      NrelFuel.new(station)
    end
  end

end
