class LightningService < BaseService

    def self.get_lightning_statistics
        endpoint = "/api/v1/lightning/statistics/latest"
        response = mempool_connection.get(endpoint)
        JSON.parse(response.body, symbolize_names: true)
    end

end