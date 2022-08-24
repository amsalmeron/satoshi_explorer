class SearchFacade
    def self.block_details(input)
        json = SearchService.get_block_details(input)
    end
    
end