require 'rails_helper'

RSpec.describe 'Dashboard/Welcome Page' do
    describe "Dashboard Contents" do
        before :each do
            visit root_path
        end

        it "has navbar" do
            expect("Satoshi Explorer").to appear_before("DASHBOARD")
            expect("Explore").to appear_before("DASHBOARD")
            expect("Mining").to appear_before("DASHBOARD")
            expect("Network").to appear_before("DASHBOARD")
            expect("Resources").to appear_before("DASHBOARD")
        end
        
        it 'has a title' do
            expect(page).to have_content("DASHBOARD")
            expect(page).to have_content("Search Blockchain")
        end

        xit 'has a search field' do
            fill_in :search, with: "000000000000000015dc777b3ff2611091336355d3f0ee9766a2cf3be8e4b1ce"
            click_button "Search"
            expect(current_path).to eq(search_path)
        end
    end
end