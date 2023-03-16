class DashboardFacade
    
    def self.block_tip_height
        response = DashboardService.get_block_tip_height
    end
    
end