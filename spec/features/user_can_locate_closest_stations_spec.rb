require 'rails_helper'

describe 'As a user' do
  context 'I can enter a zipcode' do
    it 'returns the 10 closest electric / propane stations within 6 miles sorted by distance' do
      visit root_path
      fill_in "Zipcode", with: "80203"
      click_on "Locate"

      expect(current_path).to eq(search_path)
      expect(page).to have_content("UDR")
      expect(page).to have_content("800 Acoma St")
      expect(page).to have_content("ELEC")
      expect(page).to have_content("0.3117")
      expect(page).to have_content("24 hours daily")

      expect(page).to have_content("PUBLIC STATIONS")
      expect(page).to have_content("1370 Elati St")
      expect(page).to have_content("ELEC")
      expect(page).to have_content("0.75983")
      expect(page).to have_content("24 hours daily")

      expect(page).to_not have_content("BD")
      expect(page).to_not have_content("CNG")
      expect(page).to_not have_content("E85")
      # I see 10 closest stations sorted by distance
      # The stations are limited to electric & propane
      #for each station I see name, address, fuel types, distance, and access times
    end
  end
end
