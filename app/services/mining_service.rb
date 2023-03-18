class MiningService < BaseService

    def self.get_mining_pools
        end_point = "/api/v1/mining/pools/6m"
        response = mempool_connection.get(end_point)
        JSON.parse(response.body, symbolize_names: true)
    end

end