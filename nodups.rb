# http://www.careercup.com/question?id=5091887140569088
#

def nodups(iterable)
     return iterable.split('').uniq.join
end

#    index = iterable.length

# Traverse the string in reverse order. Populate a hash with the
# characters using the string index as the value. (linear)
# This way they will enforce uniqueness and will end up with the
# earliest instances overwriting the later ones.

#    uniqs = {}
#    while index >= 0
#        uniqs[iterable[index]] = index
#        index += -1
#    end
# Sort the hash by the values, concatenate the keys as output
# The resulting string is at most the length of the printable
# characters, roughly independent of the input.
#    uniqs.values.sort


aa = "When in the course of human events"
print nodups(aa)
