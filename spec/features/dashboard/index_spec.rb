require 'rails_helper'

RSpec.describe 'Dashboard/Welcome Page' do
    describe "Dashboard Contents" do
        before :each do
            visit root_path
        end

        it 'has a title' do
            expect(page).to have_content("Satoshi Explorer")
            expect(page).to have_content("Search Blockchain")
        end

        xit 'has a search field' do
            fill_in :search, with: "000000000000000015dc777b3ff2611091336355d3f0ee9766a2cf3be8e4b1ce"
            click_button "Search"
            expect(current_path).to eq(search_path)
        end
    end
end