require_relative "../memofactorial"

RSpec.describe MemoFactorial do

  it "returns 720 when given 6" do
    a = MemoFactorial.new
    answer = a.fact(6)
    expect(answer).to eq(720)
  end

  it "returns 1 when given 1" do
    a = MemoFactorial.new
    answer = a.fact(1)
    expect(answer).to eq(1)
  end

  it "returns 479001600 when given 12" do
    a = MemoFactorial.new
    answer = a.fact(12)
    expect(answer).to eq(479001600)
  end

  it "throws ArgumentError when given -1" do
    a = MemoFactorial.new
    expect {answer = a.fact(-1)}.to raise_error(ArgumentError)
  end


  it "throws ArgumentError when given 2.5" do
    a = MemoFactorial.new
    expect {a.fact(2.5)}.to raise_error(ArgumentError)
  end

end
