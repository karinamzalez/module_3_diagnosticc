class NRELService
  def initialize
    @_conn = Faraday.new(:url => 'https://developer.nrel.gov')

  end

  def staions_by_zip(zip)
    conn.get("/api/alt-fuel-stations/v1/nearest?api_key="#{}"location=")
  end

  private

  def parse
    JSON.parse(response, :symbolize_names => true)
  end

  def conn
    @_conn
  end
end
