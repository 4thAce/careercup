# http://www.careercup.com/question?id=5750584028168192
#

#
#  Time complexity O(N) 
#   Space requirement O(N) for the output array

class SplitRespectingQuotes
  def qsplit(input)
    splitting = true
    working = ''
    output = []
    input.split('').each do |c|
#  Check whether it is a quote, toggle splitting if so
      if c == '"'
        if splitting
# Split working and append to output
          output = output + working.split(' ')
        else
# Just append working as a new entry to output
          output.push(working)
        end
        working = ''
# Toggle the flag
        splitting = !splitting 
      else
        working = working + c      
      end #if
    end  #loop over input
# Process the tail of the string
    if !working.empty?
      if splitting
# Split working and append to output
        output = output + working.split(' ')
      else
# Just append working as a new entry to output
        output.push(working)
      end
    end
    output 
  end #def
end
