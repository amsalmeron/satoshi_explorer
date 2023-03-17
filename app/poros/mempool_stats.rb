class MempoolStats
    attr_reader :count, :vsize, :total_fee

    def initialize(data)
      @count = data[:count]
      @vsize = data[:vsize]
      @total_fee = data[:total_fee]
    end

end