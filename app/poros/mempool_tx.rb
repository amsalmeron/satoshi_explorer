class MempoolTx
    attr_reader :txid, :fee, :vsize, :value

    def initialize(data)
      @txid = data[:txid]
      @fee = data[:fee]
      @vsize = data[:vsize]
      @value = data[:value]
    end

end