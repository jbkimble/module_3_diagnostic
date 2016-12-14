require 'rails_helper'

describe 'As a user' do
  context 'I can enter a zipcode' do
    it 'returns the 10 closest electric / propane stations within 6 miles sorted by distance' do
      visit root_path
      fill_in "Zipcode", with: "80203"
      click_on "Locate"

      expect(current_path).to eq(search_path)

      # I see 10 closest stations sorted by distance
      # The stations are limited to electric & propane
    end
  end
end
