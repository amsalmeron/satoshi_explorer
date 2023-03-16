require 'rails_helper'

RSpec.describe 'Resources Page' do
    describe "Resources Contents" do
        before :each do
            visit resources_path
        end

        it 'has a title' do
            expect(page).to have_content("RESOURCES PAGE")
        end
    end
end