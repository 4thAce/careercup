# http://www.careercup.com/question?id=5106757177180160
#
# As we traverse the string, push each non-blank character to an
# array. When we hit a blank, pop the array contents to the output
# string followed by a blank.
class Reverser
   def reverse_words(input)
     stack = []
     outary = []
     stringary = input.split('')
     for character in stringary do
       if character == ' '
         # Pop the stack
         while stack.length > 0 do
           outary.push(stack.pop)
         end
         outary.push(' ')
       else
         # Push to the stack
         stack.push(character)
       end
     end
   # Final pops
     while stack.length > 0 do
       outary.push(stack.pop)
     end
     return outary.join('')
   end
end
