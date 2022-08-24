class BaseService 
    def self.mempool_connection 
        Faraday.new("https://mempool.space")
    end
end