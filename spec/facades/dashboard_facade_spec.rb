require 'rails_helper'

RSpec.describe DashboardFacade do
  describe 'methods' do

    xit 'returns block height tip' do
      height = DashboardFacade.block_tip_height
      expect(height).to be_a(Integer)
    end

  end
end