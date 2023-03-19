class MiningFacade

    def self.mining_pools
        json = MiningService.get_mining_pools
        
        pools = json[:pools].map do |pool|
            MiningPool.new(pool)
        end
    end
    
end