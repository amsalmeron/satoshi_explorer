require 'rails_helper'

RSpec.describe 'Lightning Page' do
    describe "Lightning Contents" do
        before :each do
            visit lightning_path
        end

        it "has navbar" do
            expect("Satoshi Explorer").to appear_before("LIGHTNING PAGE")
            expect("Explore").to appear_before("LIGHTNING PAGE")
            expect("Mining").to appear_before("LIGHTNING PAGE")
            expect("Lightning").to appear_before("LIGHTNING PAGE")
            expect("Resources").to appear_before("LIGHTNING PAGE")
        end

        it 'has a title' do
            expect(page).to have_content("LIGHTNING PAGE")
        end
    end
end