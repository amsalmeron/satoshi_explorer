require 'rails_helper'

RSpec.describe 'Resources Page' do
    describe "Resources Contents" do
        before :each do
            visit resources_path
        end

        it "has navbar" do
            expect("Satoshi Explorer").to appear_before("RESOURCES PAGE")
            expect("Explore").to appear_before("RESOURCES PAGE")
            expect("Mining").to appear_before("RESOURCES PAGE")
            expect("Network").to appear_before("RESOURCES PAGE")
            expect("Resources").to appear_before("RESOURCES PAGE")
        end

        it 'has a title' do
            expect(page).to have_content("RESOURCES PAGE")
        end
    end
end