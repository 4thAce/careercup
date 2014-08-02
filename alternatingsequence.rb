# http://www.careercup.com/question?id=5714091033231360
#
# nil nil -3 -7 4 8 -12 -5 4 14
# 4  nil -3 -7  8 -12 -5 4 14
# 4 -3  -7  8 -12 -5 4 14
# Now the array is back to its original size. Pad it after the first
#  two entries, repeat the operation
# 4 -3 nil nil -7 8 -12 -5 4 14
# 4 -3 8   nil -7 -12 -5 4 14
# 4 -3 8  -7 -12 -5 4 14
# Then keep padding and searching until you exhaust either positives
# or negatives. Eliminate any remaining nils at the end. This adds
# only space complexity O(1) and the time complexity will be something
# like O(N^2). The respective positives and negatives will keep
# their orders

class AlternatingSequence
  def alternatingsequence(input)
    puts "Array is " + input.join(',')
    return input if input.all? { |entry| entry > 0 }
    return input if input.all? { |entry| entry < 0 }
# Pad the array with two initial values set to nil
#    working = [nil, nil] + input
    working = input
    length = working.length
    pointer = 0
    catch Exception do
       while pointer < length do
# The first nil is filled with the positive entry with lowest
#  index greater than pointer
         working[pointer..-1].each_with_index do |value, index|
           puts "%s at %s" % [value,index]
           if value > 0
             puts "Replacing value at #{pointer}"
             if pointer > 0
             puts "#{working[0..pointer-1]} + #{[working[index]]} + #{working[pointer..index-1]} + #{working[index+1..-1]}"
               working = working[0..pointer-1] + [working[index]] + working[pointer..index-1] + working[index+1..-1]
             else
             puts "#{[working[index]]} + #{working[pointer..index-1]} + #{working[index+1..-1]}"
               working = [working[index]] + working[pointer..index-1] + working[index+1..-1]
             end
             throw Exception
           else
             puts "#{value} < 0"
           end
         end
# There are no more positive entries so we are done
# Delete that entry
# The second nil is filled with the negative entry with lowest index
# Delete that entry

# Increment pointer by two, put the two padding entries there
    pointer = pointer + 2
       end
    end
    working
  end
end
