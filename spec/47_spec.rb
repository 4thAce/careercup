require_relative "../47"

RSpec.describe FourSeven do

  it "returns 47 given 4" do
    result = FourSeven.nth47(4)
    expect(result).to eq(47)
  end

  it "returns 4747 given 20" do
    result = FourSeven.nth47(20)
  end

end
