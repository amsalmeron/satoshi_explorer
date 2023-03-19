require 'rails_helper'

RSpec.describe 'Explorer Page' do
    describe "Explorer Contents" do
        before :each do
            visit explorer_path
        end

        it "has navbar" do
            expect("Satoshi Explorer").to appear_before("EXPLORER PAGE")
            expect("Explore").to appear_before("EXPLORER PAGE")
            expect("Mining").to appear_before("EXPLORER PAGE")
            expect("Lightning").to appear_before("EXPLORER PAGE")
            expect("Resources").to appear_before("EXPLORER PAGE")
        end

        it 'has a title' do
            expect(page).to have_content("EXPLORER PAGE")
        end
    end
end