require 'rails_helper'

RSpec.describe 'Mining Page' do
    describe "Mining Contents" do
        before :each do
            visit mining_path
        end

        it 'has a title' do
            expect(page).to have_content("MINING PAGE")
        end
    end
end