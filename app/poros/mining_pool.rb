class MiningPool
    attr_reader :poolId, :name, :link, :blockCount, :rank, :slug

    def initialize(data)
        @poolId = data[:poolId]
        @name = data[:name]
        @link = data[:link]
        @blockCount = data[:blockCount]
        @rank = data[:rank]
        @slug = data[:slug]
    end
end