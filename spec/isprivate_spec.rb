require_relative "../isprivate"

RSpec.describe "IsPrivate::tointeger" do

  it "returns 3232261220 given 192.168.100.100" do
    address = "192.168.100.100"
    result = IsPrivate.tointeger(address)
    expect(result).to eq(3232261220)
  end


  it "returns 167838469 given 10.1.3.5" do
    address = "10.1.3.5"
    result = IsPrivate.tointeger(address)
    expect(result).to eq(167838469)
  end


  it "returns 2887043296 given 172.20.200.224" do
    address = "172.20.200.224"
    result = IsPrivate.tointeger(address)
    expect(result).to eq(2887043296)
  end

  it "returns 134767459 given 8.8.99.99" do
    address = "8.8.99.99"
    result = IsPrivate.tointeger(address)
    expect(result).to eq(134767459)
  end

end

RSpec.describe "IsPrivate::isprivate" do

  it "returns true given 10.1.3.5" do
    address = "10.1.3.5"
    i = IsPrivate.new
    result = i.isprivate(address)
    expect(result).to eq(true)
  end

  it "returns true given 192.168.100.100" do
    address = "192.168.100.100"
    i = IsPrivate.new
    result = i.isprivate(address)
    expect(result).to eq(true)
  end

  it "returns true given 172.20.200.224" do
    address = "172.20.200.224"
    i = IsPrivate.new
    result = i.isprivate(address)
    expect(result).to eq(true)
  end

  it "returns false given 8.8.99.99" do
    address = "8.8.99.99"
    i = IsPrivate.new
    result = i.isprivate(address)
    expect(result).to eq(false)
  end

end
