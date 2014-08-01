#
#  [1, 2, 95, 96, 97]  - 95
#  [8, 9, 98, 99, 100] - 98
#  [3, 4, 5, 6, 7]  - 5
#  Overall median is 7, but median of medians is 95
#  Measure middle of quintiles and pass those up to central
#  server. In this case all the numbers would be passed up
#  and the overall median would be found. For a larger set of 
#  numbers, the quintiles approximate the distribution with
#  equal weights. They provide more information about the
#  total distribution so we can approximate the integral and
#  find the halfway point of area

def quintiles(parent)
  include Math
  sorted = parent.sort
  index = [ sorted.length * 0.1, 
              sorted.length * 0.3,
              sorted.length * 0.5,
              sorted.length * 0.7,
              sorted.length * 0.9,
             ]
  result = []
  (0..4).each do |tile|
    if !index[tile].integer?
      result[tile] = 0.5 * (sorted[index[tile].to_i+1] + sorted[index[tile].to_i])
    else
      result[tile] = sorted[index[tile].to_i]
    end
  end
  return result
end

r = (1..100)
print "Mid quintiles for r: " + quintiles(r).join(',') + "\n"
s = [25, -1, 64, 32, 32, 50, 99, -5, 90, 89, 17, 42, 41, 6, 3, -3, 33, -15, -18, 40, 55, 50, 41]
print "s is " + s.sort.join(', ') + "\n"
print "Mid quintiles for s: " + quintiles(s).join(',') + "\n"
