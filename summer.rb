# http://www.careercup.com/question?id=5735540389314560
#
# Starting from the LSB, sum the two addends plus carries and concatenate
# onto the output string. Reverse it before returning
class Summer
    def stringadd(first, second)
      output = ''
      # Left pad
      if first.length < second.length
        first = "0" * (second.length - first.length) + first
      elsif first.length > second.length
        second = "0" * (first.length - second.length) + second
      end
      #puts "first is " + first
      #puts "second is " + second
      index = first.length - 1
      carry = '0'
      while index >= 0 do
        #puts "*** index=" + index.to_s
        #puts "From first: " + first[index]
        #puts "From second: " + second[index]
        #puts "Carry is " + carry
        if first[index] == '0'
          #puts "First contributes 0"
          if second[index] == '0'
            #puts "Second contributes 0"
            #puts " 0 + 0 carry " + carry + " gives " + carry + ", carry 0"
            output = output + carry
            carry = '0'
          elsif carry == '1'
            #puts "Second contributes 1"
            #puts " 0 + 1 carry 1 gives 0, carry 1"
            output = output + '0'
            carry = '1'
          else
            #puts "Second contributes 1"
            #puts " 0 + 1 carry 0 gives 1, carry 0"
            output = output + '1'
            carry = '0'
          end
        else
          if second[index] == '0'
            if carry == '1'
              #puts " 1 + 0 carry 1 gives 0, carry 1"
              output = output + '0'
              carry = '1'
            else
              #puts " 1 + 0 carry 0 gives 1, carry 0"
              output = output + '1'
              carry = '0'
            end
          elsif carry == '1'
            #puts " 1 + 1 carry 1 gives 1, carry 1"
            output = output + '1'
            carry = '1'
          else
            #puts " 1 + 1 carry 0 gives 0, carry 1"
            output = output + '0'
            carry = '1'
          end
        end
        #puts "Now output is " + output
        index += -1
      end
      if carry == '1'
        output = output + '1'
      end
      return output.reverse
    end
end
