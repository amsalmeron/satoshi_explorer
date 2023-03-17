require 'rails_helper'

RSpec.describe 'Search Page' do
    describe "Search Contents" do
        before :each do
            visit search_path
        end

        it "has navbar" do
            expect("Satoshi Explorer").to appear_before("SEARCH RESULTS PAGE")
            expect("Explore").to appear_before("SEARCH RESULTS PAGE")
            expect("Mining").to appear_before("SEARCH RESULTS PAGE")
            expect("Network").to appear_before("SEARCH RESULTS PAGE")
            expect("Resources").to appear_before("SEARCH RESULTS PAGE")
        end

        it 'has a title' do
            expect(page).to have_content("SEARCH RESULTS PAGE")
        end
        
        it "empty search" do
            click_button 'Search'
            expect(current_path).to eq(search_path)
            expect(page).to have_content("SEARCH RESULTS PAGE")
        end
        
    end
end