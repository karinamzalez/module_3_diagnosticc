class NRELService
  def initialize
    @_conn = Faraday.new(:url => 'http://')
  end

  def staions_by_zip(zip)

  end

  private

  def parse
    JSON.parse(response, :symbolize_names => true)
  end
end
