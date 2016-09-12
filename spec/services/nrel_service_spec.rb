require 'rails_helper'

RSpec.describe "NREL Service" do

  before(:each) do
    @service = NRELService.new
  end

  it "gets stations by zip" do
    service = NRELService.new
    zip = "80203"
    stations = service.stations_by_zip(zip)

    expect(stations.count).to eq 8
  end
end
