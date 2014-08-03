# http://www.careercup.com/question?id=5714091033231360
#

class AlternatingSequence
  def alternatingsequence(input)
    return input if input.all? { |entry| entry > 0 }
    return input if input.all? { |entry| entry < 0 }
# Pad the array with two initial values set to nil
    working = input
    length = working.length
    pointer = 0
    while pointer < length - 1 do
# The first nil is filled with the positive entry with lowest
#  index greater than pointer
      if working[pointer] < 0
        working[pointer..-1].each_with_index do |value, index|
          if value > 0
            posindex = pointer + index
            if pointer > 0
# This is ugly, but it's not easy to insert or remove values in the middle
# of an array
# Special case to avoid the semantics of working[-1]
              working = working[0..pointer-1] + [working[posindex]] + working[pointer..posindex-1] + working[posindex+1..-1]
            else
              working = [working[posindex]] + working[pointer..posindex-1] + working[posindex+1..-1]
            end
# Break out of the loop for the positive entry
            break
          end
# There are no more positive entries so we are done
        end    # loop over tail of working, break to here
      end  #if
      return working if length < pointer+1 
# Coerce the second spot with the negative entry with lowest index
      if working[pointer + 1] > 0
        working[pointer+1..-1].each_with_index do |value, index|
          if value < 0
            negindex = pointer + index + 1
            working = working[0..pointer] + [working[negindex]] + working[pointer+1..negindex-1] + working[negindex+1..-1]
            break
          else
            working
          end
# There are no more positive entries so we are done
        end    # loop over tail of working
      else
      end # if
      pointer = pointer + 2
    end #while loop over pointer
    working
  end #def
end
