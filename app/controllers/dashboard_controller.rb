class DashboardController < ApplicationController 

    def index
        @data_block_tip_height = DashboardFacade.block_tip_height
    end

end