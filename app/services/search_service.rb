class SearchService < BaseService
    def self.get_block_details(input)
        end_point = "/api/block/#{input}"
        response = mempool_connection.get(end_point)
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.get_tx_details(input)
        end_point = "/api/tx/#{input}"
        response = mempool_connection.get(end_point)
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.get_address_details(input)
        end_point = "/api/address/#{input}"
        response = mempool_connection.get(end_point)
        JSON.parse(response.body, symbolize_names: true)
    end
end