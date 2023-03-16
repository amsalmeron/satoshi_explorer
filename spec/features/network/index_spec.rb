require 'rails_helper'

RSpec.describe 'Network Page' do
    describe "Network Contents" do
        before :each do
            visit network_path
        end

        it 'has a title' do
            expect(page).to have_content("NETWORK PAGE")
        end
    end
end