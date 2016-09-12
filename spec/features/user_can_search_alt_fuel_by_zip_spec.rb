require 'rails_helper'

RSpec.feature "user can search alternative stations" do
  scenario "guest user visits root & successfully searches fuel station" do
# When I visit "/"
    visit "/"
# And I fill in the search form with 80203
    within ".search-field" do
      fill_in "zip", :with => "80203"
    end
# And I click "Locate"
    click_button "Locate"
# Then I should be on page "/search" with parameters visible in the url
    expect(page).to have_current_path(search_path(zip: 80203))
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    within "#close-locations" do
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
    end
  end
end
