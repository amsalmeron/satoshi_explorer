require 'rails_helper'

RSpec.describe 'Dashboard/Welcome Page' do
    describe "Dashboard Contents" do
        it 'has a title' do
            visit root_path
            expect(page).to have_content("Satoshi Explorer")
            expect(page).to have_content("Search Blockchain")
        end
    end
end