# http://www.careercup.com/question?id=5714091033231360
# Pad the array with two initial values set to nil
# The first one is filled with the positive entry with lowest
#  index
# The second one is filled with the negative entry with lowest index
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
