require 'rails_helper'

RSpec.describe 'Explorer Page' do
    describe "Explorer Contents" do
        before :each do
            visit explorer_path
        end

        it 'has a title' do
            expect(page).to have_content("EXPLORER PAGE")
        end
    end
end