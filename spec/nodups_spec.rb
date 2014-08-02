# nodups_spec.rb
require_relative '../nodups'

describe Nodups do
  it "returns When itcoursfmav for the beginning of the Declaration" do
    aa = "When in the course of human events"
    nodup = Nodups.new
    answer = nodup.remove_dupes(aa)
    expect(answer).to eq("When itcoursfmav")
  end
end
