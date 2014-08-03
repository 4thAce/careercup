require_relative "../splitrespectingquotes"

RSpec.describe SplitRespectingQuotes do

  it 'returns ["abc"] when given abc' do
    input = 'abc'
    s = SplitRespectingQuotes.new
    result = s.qsplit(input)
    expect(result).to eq(['abc'])
  end

  it 'returns ["abc", "123"] when given abc 123' do
    input = 'abc 123'
    s = SplitRespectingQuotes.new
    result = s.qsplit(input)
    expect(result).to eq(['abc', '123'])
  end

  it 'returns ["foo bar"] when given "foo bar"' do
    input = '"foo bar"'
    s = SplitRespectingQuotes.new
    result = s.qsplit(input)
    expect(result).to eq(["foo bar"])
  end

  it 'returns ["baz","foo bar"] when given baz "foo bar"' do
    input = 'baz "foo bar"'
    s = SplitRespectingQuotes.new
    result = s.qsplit(input)
    expect(result).to eq(['baz', "foo bar"])
  end

  it 'returns ["Alice was", "beginning to get", "very", "tired", "of", "sitting by", "her", "sister", "on", "the", "bank"] when given "Alice was" "beginning to get" very tired of "sitting by" her sister on the bank' do
    input = '"Alice was" "beginning to get" very tired of "sitting by" her sister on the bank'
    s = SplitRespectingQuotes.new
    result = s.qsplit(input)
    expect(result).to eq(["Alice was", "beginning to get", "very", "tired", "of", "sitting by", "her", "sister", "on", "the", "bank"])
  end

end
