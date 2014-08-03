# Given a text file, return the most common word found

class CommonestWord
  def concordance(textfile)
#  Returns a hash with space delimited words as keys,
#   frequencies as values
    f = File.open(textfile)
    a = f.lines.to_a
    hash = Hash.new
    a.each do |line|
      line.split(' ').each do |word|
        hash[word] = 0 if hash[word].nil? 
        hash[word] = hash[word] + 1
      end
    end
    f.close
    hash
  end

  def mostcommon(textfile)
    sorted = Array.new
    freqs = concordance(textfile)
    freqs.sort_by {|key, value| value}.each do |key, value|
      sorted.push(key)
    end
    return sorted[-1]
  end

end

