class DashboardFacade
    
    def self.block_tip_height
        json = DashboardService.get_block_tip_height
    end

    def self.all_mempool
        json = DashboardService.get_all_mempool
    end

    def self.recent_mempool
        json = DashboardService.get_mempool_recent
    end
    
end