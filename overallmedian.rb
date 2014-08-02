#
#  [1, 2, 95, 96, 97]  - 95
#  [8, 9, 98, 99, 100] - 98
#  [3, 4, 5, 6, 7]  - 5
#  Overall median is 8, but median of medians is 95
#  Measure middle of quintiles and pass those up to central
#  server. In this case all the numbers would be passed up
#  and the overall median would be found. For a larger set of 
#  numbers, the quintiles approximate the distribution with
#  equal weights. They provide more information about the
#  total distribution so we can approximate the integral and
#  find the halfway point of area

class OverallMedian
    def median(parent)
      sorted = parent.flatten.sort
      midpoint = (sorted.length - 1) * 0.5 
        result = 0.5 * (sorted[midpoint.ceil] + sorted[midpoint.floor])
      return result
    end

    def quintiles(parent)
      sorted = parent.flatten.sort
      index = [ (sorted.length - 1) * 0.1, 
              (sorted.length - 1) * 0.3,
              (sorted.length - 1) * 0.5,
              (sorted.length - 1) * 0.7,
              (sorted.length - 1) * 0.9,
              ]
      result = []
      (0..4).each do |tile|
          result[tile] = 0.5 * (sorted[index[tile].ceil] + sorted[index[tile].floor])
      end
      return result
    end
end

