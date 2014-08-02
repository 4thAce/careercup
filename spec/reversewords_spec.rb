require_relative "../reversewords"

describe Reverser do
  it "returns doG sselb eht dlihc s'taht tog sih .nwo given God bless the child that's got his own." do
    r = Reverser.new
    input = "God bless the child that's got his own."
    output = r.reverse_words(input)
    expect(output).to eq("doG sselb eht dlihc s'taht tog sih .nwo")
  end
end
