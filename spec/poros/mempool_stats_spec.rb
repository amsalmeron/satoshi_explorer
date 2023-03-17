require 'rails_helper'

RSpec.describe MempoolStats do
  it 'has a count, vsize and total fee' do
    data = {
        "count": 10,
        "vsize": 200,
        "total_fee": 5000
        }
    mempool = MempoolStats.new(data)

    expect(mempool).to be_a(MempoolStats)
    expect(mempool.count).to eq(10)
    expect(mempool.vsize).to eq(200)
    expect(mempool.total_fee).to eq(5000)
  end
end
