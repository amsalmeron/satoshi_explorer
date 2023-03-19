require 'rails_helper'

RSpec.describe 'Mining Page' do
    describe "Mining Contents" do
        before :each do
            visit mining_path
        end

        it "has navbar" do
            expect("Satoshi Explorer").to appear_before("MINING PAGE")
            expect("Explore").to appear_before("MINING PAGE")
            expect("Mining").to appear_before("MINING PAGE")
            expect("Lightning").to appear_before("MINING PAGE")
            expect("Resources").to appear_before("MINING PAGE")
        end

        it 'has a title' do
            expect(page).to have_content("MINING PAGE")
        end
    end
end