require_relative "../commonestword"

RSpec.describe "CommonestWord::mostcommon" do
  it "can read pg11.txt and returns the" do
    c = CommonestWord.new
    result = c.mostcommon('pg11.txt')
    expect(result).to eq('the')
  end

end

RSpec.describe "CommonestWord::concordance" do
  it "returns a Hash" do
    c = CommonestWord.new
    result = c.concordance('pg11.txt')
    expect(result).to be_an_instance_of(Hash)
  end

end
