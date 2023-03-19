class LightningFacade 

    def self.lightning_statistics
        json = LightningService.get_lightning_statistics
        lightningStatistics = LightningStats.new(json)
    end
    
end