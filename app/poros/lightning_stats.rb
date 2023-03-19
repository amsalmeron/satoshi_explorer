class LightningStats
    attr_reader :channel_count, :node_count, :total_capacity, :tor_nodes, :clearnet_nodes, :unannounced_nodes,
                :avg_capacity, :avg_fee_rate, :med_capacity, :med_fee_rate, :clearnet_tor_nodes

    def initialize(data)
      @channel_count = data[:channel_count]
      @node_count = data[:node_count]
      @total_capacity = data[:total_capacity]
      @tor_nodes = data[:tor_nodes]
      @clearnet_nodes = data[:clearnet_nodes]
      @unannounced_nodes = data[:unannounced_nodes]
      @avg_capacity = data[:avg_capacity]
      @avg_fee_rate = data[:avg_fee_rate]
      @med_capacity = data[:med_capacity]
      @med_fee_rate = data[:med_fee_rate]
      @clearnet_tor_nodes = data[:clearnet_tor_nodes]
    end

end