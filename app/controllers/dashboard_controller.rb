class DashboardController < ApplicationController 

    def index
        @data_block_tip_height = DashboardFacade.block_tip_height
        @mempool_stats = DashboardFacade.all_mempool
        @mempool_txs = DashboardFacade.recent_mempool
    end

end