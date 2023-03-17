class DashboardService < BaseService

    def self.get_block_tip_height
        end_point = "/api/blocks/tip/height"
        response = mempool_connection.get(end_point)
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.get_all_mempool
        end_point = "/api/mempool"
        response = mempool_connection.get(end_point)
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.get_mempool_recent
        end_point = "/api/mempool/recent"
        response = mempool_connection.get(end_point)
        JSON.parse(response.body, symbolize_names: true)
    end

end