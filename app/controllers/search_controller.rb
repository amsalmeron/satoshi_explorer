class SearchController < ApplicationController

    def index
        validSearch = false

        if params[:search] && params[:search] != ""
            validSearch = true
        end
        
        if validSearch
            @data = SearchFacade.block_details(params[:search])
        end
    end
    
end