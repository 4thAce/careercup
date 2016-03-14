// summer computes the binary sum of two input binary strings containing only 1 and 0
// https://www.careercup.com/question?id=5735540389314560
package summer

import (
	"fmt"
	"os"
)

func main() {
	var out []string
	var len0 = len(os.Args[0])
	var len1 = len(os.Args[1])
	var aa, bb string
	const zero="0"
	const one="1"

	// Pad the shorter of the two strings
	if len0 < len1 {
	  for kk := len0; kk < len1; kk++ {
		aa += zero
	}
	        aa += os.Args[0]
		bb = os.Args[1]
	} else {
	  for kk := len1; kk < len0; kk++ {
		aa += zero
		}
		aa += os.Args[1]
		bb = os.Args[0]
	}
	// Loop over the bit positions LSB to MSB and store in out array
	carry := "0"
	for ii := len(aa); ii > 0; ii-- {
		if aa[ii] == '0' {
		// Cannot index into a byte array, need to use a slice
			if bb[ii:ii] == zero {
				out[ii] = carry
				carry = zero
			} else if carry == one {
				out[ii] = zero
				carry = one
			} else {
				out[ii] = one
				carry = zero
			}
		} else {
			if bb[ii:ii] == zero {
				if carry == one {
					out[ii] = zero
					carry = one
				} else {
					out[ii] = one
					carry = zero
				}
			} else if carry == one {
				out[ii] = one
				carry = one
			} else {
				out[ii] = zero
				carry = one
			}
		}
	}
	// Reverse the out array and print it
	reverse(out[:])
	for jj := 0; jj < len(aa); jj++ {
		fmt.Printf("%s", out[jj])
	}
	fmt.Printf("\n")
}

func reverse(ss []string) {
	for ii, jj := 0, len(ss)-1; ii < jj; ii, jj = ii+1, jj-1 {
		ss[ii], ss[jj] = ss[jj], ss[ii]
	}
}
