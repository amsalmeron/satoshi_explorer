require 'rails_helper'

RSpec.describe 'Network Page' do
    describe "Network Contents" do
        before :each do
            visit network_path
        end

        it "has navbar" do
            expect("Satoshi Explorer").to appear_before("NETWORK PAGE")
            expect("Explore").to appear_before("NETWORK PAGE")
            expect("Mining").to appear_before("NETWORK PAGE")
            expect("Network").to appear_before("NETWORK PAGE")
            expect("Resources").to appear_before("NETWORK PAGE")
        end

        it 'has a title' do
            expect(page).to have_content("NETWORK PAGE")
        end
    end
end