require_relative "../alternatingsequence"

RSpec.describe AlternatingSequence do
  it "returns the original array if all positives" do
    input = [1, 2, 24, 2, 1]
    a = AlternatingSequence.new
    result = a.alternatingsequence(input)
    expect(result).to eq(input)
  end

  it "returns the original array if all negatives" do
    input = [-1, -2, -24, -2, -1]
    a = AlternatingSequence.new
    result = a.alternatingsequence(input)
    expect(result).to eq(input)
  end

  it "returns [1, -1] if given [-1, 1]" do
    input = [-1, 1]
    a = AlternatingSequence.new
    result = a.alternatingsequence(input)
    expect(result).to eq([1, -1])
  end

  it "returns [1, -1, -2] if given [-1, 1, -2]" do
    input = [-1, 1, -2]
    a = AlternatingSequence.new
    result = a.alternatingsequence(input)
    expect(result).to eq([1, -1, -2])
  end 

  it "returns [2, -1, -10] if given [-1, 2, -10]" do
    input = [-1, 2, -10]
    a = AlternatingSequence.new
    result = a.alternatingsequence(input)
    expect(result).to eq([2, -1, -10])
  end 

  it "returns [1, -10, 2] if given [1, 2, -10]" do
    input = [1, 2, -10]
    a = AlternatingSequence.new
    result = a.alternatingsequence(input)
    expect(result).to eq([1, -10, 2])
  end 

  it "returns [4, -3, 8,  -7, 4, -12, 14, -5] given [-3 -7 4 8 -12 -5 4 14]" do
    input = [-3, -7, 4, 8, -12, -5, 4, 14]
    a = AlternatingSequence.new
    result = a.alternatingsequence(input)
    expect(result).to eq([4, -3, 8,  -7, 4, -12, 14, -5])
  end 

# it "returns [1, -1, 2, -2] if given [-1, 1, -2, 2]" do
#   input = [-1, 1, -2, 2]
#   a = AlternatingSequence.new
#   result = a.alternatingsequence(input)
#   expect(result).to eq([1, -1, 2, -2])
# end

#it "returns the original array if already alternating" do
#  input = [1, -2, 24, -2, 1]
#  a = AlternatingSequence.new
#  result = a.alternatingsequence(input)
#  expect(result).to eq(input)
#end

end
