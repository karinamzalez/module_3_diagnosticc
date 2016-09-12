require 'rails_helper'

RSpec.describe "NREL Service" do
  before(:each) do
    @service = NRELService.new
  end

  context "gets stations by zip" do
    stations = @service.stations_by_zip

    parsed_stations = JSON.parse(stations, :symbolize_names => true)

    expect(parsed_stations.count).to eq ""
  end
end
