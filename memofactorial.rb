# Factorial computation with memoization

class MemoFactorial

  def initialize
    @@memo = Hash.new
  end

  def fact(arg)
    return 1 if arg == 1
    raise ArgumentError if arg < 1
    raise ArgumentError if !arg.is_a? Integer
    return @@memo[arg] if @@memo.has_key?(arg)
    @@memo[arg] = arg * fact(arg - 1)
    return @@memo[arg]
  end
end
