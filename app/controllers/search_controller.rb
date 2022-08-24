class SearchController < ApplicationController
    def index
        if params[:search]
            @data = SearchFacade.block_details(params[:search])
        end
    end
end