require_relative '../lib/app'

describe "find crypto price" do
  it "finds price of a crypto-cuurency" do
    expect(crypto_price_finder().select{|x| x.keys == ["BTC"]}.to eq("$9,140.19"))
    
  end
end