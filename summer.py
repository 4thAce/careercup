class Summer:

    def stringadd(self, first, second):
        output = []
        # Left pad
        if len(first) < len(second):
            working1 = first.ljust(len(second))
            working2 = second
        else:
            working2 = second.ljust(len(first))
            working1 = first
        index = len(first) - 1
        carry = '0'
        while index >= 0:
            if first[index] == '0':
                if second[index] == '0':
                    output.append(carry)
                    carry = '0'
                elif carry == '1':
                    output.append('0')
                    carry = '1'
                else:
                    output.append('1')
                    carry = '0'
            else:
                if second[index] == '0':
                    if carry == '1':
                        output.append('0')
                        carry = '1'
                    else:
                        output.append('1')
                        carry = '0'
                elif carry == '1':
                    output.append('1')
                    carry = '0'
                else:
                    output.append('0')
                    carry = '1'
            index -= 1
        if carry == '1':
            output.append('1')
        #print("output = %s" % (output))
        #print("reversed = %s" % (output[::-1]))
        print("squash to %s" % (''.join(output[::-1])))
        return ''.join(output[::-1])

