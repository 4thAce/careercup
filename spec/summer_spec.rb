require_relative "../summer"

RSpec.describe Summer do
  it "returns 1 given 1 and 0" do
    s = Summer.new
    aa = '1'
    bb = '0'
    result =  s.stringadd(aa, bb)
    expect(result).to eq("1")
  end

  it "returns 10 given 1 and 1" do
    s = Summer.new
    aa = '1'
    bb = '1'
    result =  s.stringadd(aa, bb)
    expect(result).to eq("10")
  end

  it "returns 1010 given 101 and 101" do
    s = Summer.new
    aa = '101'
    bb = '101'
    result =  s.stringadd(aa, bb)
    expect(result).to eq("1010")
  end

  it "returns 10010101010101001101 given 1111111111111111000 and 10101010101010101" do
    s = Summer.new
    aa = '1111111111111111000'
    bb = '10101010101010101'
    result =  s.stringadd(aa, bb)
    expect(result).to eq("10010101010101001101")
  end
end