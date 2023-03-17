require 'rails_helper'

RSpec.describe DashboardFacade do
  describe 'methods' do

    xit 'returns block height tip' do
      height = DashboardFacade.block_tip_height
      expect(height).to be_a(Integer)
    end

    xit 'returns mempool stats' do
      mempool_stat = DashboardFacade.all_mempool
      expect(mempool_stat[:txid]).to be_a(String)
      expect(mempool_stat[:count]).to be_a(Integer)
      expect(mempool_stat[:vsize]).to be_a(Integer)
      expect(mempool_stat[:total_fee]).to be_a(Integer)
    end

    xit 'returns latest 10 tx in mempool' do
      mempool_recent = DashboardFacade.mempool_recent
      expect(mempool_recent.count).to be_a(10)
    end

  end
end