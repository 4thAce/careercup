require_relative "../overallmedian"

RSpec.describe "OverallMedian::median" do
  it "returns 3 for integers 1..5" do
    r = (1..5).to_a
    om = OverallMedian.new
    median = om.median(r)
    expect(median).to eq(3)
  end

  it "returns 3.5 for integers 1..6" do
    r = (1..6).to_a
    om = OverallMedian.new
    median = om.median(r)
    expect(median).to eq(3.5)
  end

  it "returns 51.5 for integers 1..100" do
    r = (1..100).to_a
    om = OverallMedian.new
    median = om.median(r)
    expect(median).to eq(50.5)
  end

  it "returns 8 where median of medians fails" do
    all3 = [[1, 2, 95, 96, 97], [8, 9, 98, 99, 100], [3, 4, 5, 6, 7]]
    om = OverallMedian.new
    median = om.median(all3)
    expect(median).to eq(8)
  end

  it "returns 33 in example of 23 values" do
    s = [[25, -1, 64, 32, 32], [50, 99, -5, 90, 89], [17, 42], [41, 6, 3, -3, 33, -15, -18, 40, 55, 50, 41]]
    om = OverallMedian.new
    median = om.median(s)
    expect(median).to eq(33)
  end
end

RSpec.describe "OverallMedian::quintiles" do

  it "returns an array for integers 1..100" do
    r = (1..100).to_a
    om = OverallMedian.new
    quintiles = om.quintiles(r)
    expect(quintiles).to eq([10.5,30.5,50.5,70.5,90.5])
  end

  it "returns an array where median of medians fails" do
    all3 = [[1, 2, 95, 96, 97], [8, 9, 98, 99, 100], [3, 4, 5, 6, 7]]
    om = OverallMedian.new
    q = om.quintiles(all3)
    expect(q).to eq([2.5, 5.5, 8.0, 95.5, 98.5])
  end

  it "returns an array in example of 23 values" do
    s = [[25, -1, 64, 32, 32], [50, 99, -5, 90, 89], [17, 42], [41, 6, 3, -3, 33, -15, -18, 40, 55, 50, 41]]
    om = OverallMedian.new
    quintiles = om.quintiles(s)
    expect(quintiles).to eq([-4.0, 11.5, 33.0, 46.0, 76.5])
  end
end
