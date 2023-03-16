require 'rails_helper'

RSpec.describe DashboardService do
  describe 'methods' do

    xit 'returns the block height tip' do
      block_height = DashboardService.get_block_tip_height
      expect(block_height).to be_a(Integer)
    end

  end
end