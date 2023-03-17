require 'rails_helper'

RSpec.describe MempoolTx do
  it 'has a count, vsize and total fee' do
    data = [{
        "txid": "long string",
        "fee": 100,
        "vsize": 200,
        "value": 1234
        },
        {
        "txid": "longer string",
        "fee": 200,
        "vsize": 10000,
        "value": 20000
        }]

    mempool = data.map do |tx|
        MempoolTx.new(tx)
    end

    expect(mempool.first).to be_a(MempoolTx)
    expect(mempool.first.txid).to eq("long string")
    expect(mempool.first.fee).to eq(100)
    expect(mempool.first.vsize).to eq(200)
    expect(mempool.first.value).to eq(1234)
  end
end
