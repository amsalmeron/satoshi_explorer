class MiningController < ApplicationController
    
    def index
        @mining_pools = MiningFacade.mining_pools
    end

end