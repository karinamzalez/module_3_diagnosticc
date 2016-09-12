class NRELService
  def initialize
    @_conn = Faraday.new(:url => 'https://developer.nrel.gov')
  end

  def stations_by_zip(zip)
    parse(conn.get("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["NREL_CLIENT_ID"]}&location=#{zip}"))
  end

  private

  def parse(response)
    JSON.parse(response.body, :symbolize_names => true)
  end

  def conn
    @_conn
  end
end
