import unittest
from summer import Summer

class SmallTest(unittest.TestCase):

    def setUp(self):
        # Before every test case
        self.inst = Summer()

    def test1_0(self):
        # it returns 1 given 1 and 0
        assert self.inst.stringadd("1", "0") == "1", "should return 1"

    def test101_101(self):
        #  it returns 1010 given 101 and 101
        aaa = "101"
        bbb = "101"
        assert self.inst.stringadd(aaa, bbb) == '1010', "should return 1010"

    def test111_111(self):
        #  it returns 1110 given 111 and 111
        aaa = "111"
        bbb = "111"
        assert self.inst.stringadd(aaa, bbb) == '1110', "should return 1110"

    def test1111111111111111000_10101010101010101(self):
        # it returns 10010101010101001101 given 1111111111111111000 and 10101010101010101
        assert self.inst.stringadd('1111111111111111000', '10101010101010101') == '10010101010101001101', "should return 10010101010101001101"

if __name__ == "__main__":
    unittest.main() # run all tests
