require 'rails_helper'

RSpec.describe DashboardService do
  describe 'methods' do

    xit 'returns the block height tip' do
      block_height = DashboardService.get_block_tip_height
      expect(block_height).to be_a(Integer)
    end

    xit 'returns mempool condition' do
      mempool = DashboardService.get_all_mempool

      expect(mempool).to have_key(:count)
      expect(mempool).to have_key(:vsize)
      expect(mempool).to have_key(:total_fee)
      expect(mempool[:count]).to be_a(Integer)
      expect(mempool[:vsize]).to be_a(Integer)
      expect(mempool[:total_fee]).to be_a(Integer)
    end

    xit 'returns mempool condition' do
      mempool_recent = DashboardService.get_mempool_recent

      expect(mempool_recent.count).to eq(10)
      expect(mempool_recent.first).to have_key(:txid)
      expect(mempool_recent.first).to have_key(:fee)
      expect(mempool_recent.first).to have_key(:vsize)
      expect(mempool_recent.first).to have_key(:value)

      expect(mempool_recent.first[:txid]).to be_a(String)
      expect(mempool_recent.first[:fee]).to be_a(Integer)
      expect(mempool_recent.first[:vsize]).to be_a(Integer)
      expect(mempool_recent.first[:value]).to be_a(Integer)
    end

  end
end