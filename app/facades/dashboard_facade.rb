class DashboardFacade
    
    def self.block_tip_height
        json = DashboardService.get_block_tip_height
    end

    def self.all_mempool
        json = DashboardService.get_all_mempool
        MempoolStats.new(json)
    end

    def self.recent_mempool
        json = DashboardService.get_mempool_recent
        json.map do |tx|
            MempoolTx.new(json)
        end
    end
    
end