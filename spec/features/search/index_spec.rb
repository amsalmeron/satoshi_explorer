require 'rails_helper'

RSpec.describe 'Search Page' do
    describe "Search Contents" do
        before :each do
            visit search_path
        end

        it 'has a title' do
            expect(page).to have_content("SEARCH RESULTS PAGE")
        end
    end
end