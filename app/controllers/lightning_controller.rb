class LightningController < ApplicationController
    
    def index
        @lightning_statistics = LightningFacade.lightning_statistics        
    end

end