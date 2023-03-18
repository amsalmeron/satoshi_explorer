class LightningService < BaseService

    def self.get_lightning_statistics
        endpoint = "/api/v1/lightning/statistics/latest"
        json = mempool_connection.get(end_point)
        JSON.parse(response.body, symbolize_names: true)
    end

end