require 'rails_helper'

RSpec.describe "NREL Service" do

  before(:each) do
    @service = NRELService.new
  end

  context "gets stations by zip" do
    @service = NRELService.new
    zip = "80203"
    stations = @service.stations_by_zip(zip)

    parsed_stations = JSON.parse(stations, :symbolize_names => true)

    expect(parsed_stations.count).to eq ""
  end
end
