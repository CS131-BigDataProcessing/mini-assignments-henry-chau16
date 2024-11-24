import unittest
from math_functions import *


class Tester(unittest.TestCase):

    def test_power(self):
        print('testing power function')
        self.assertEqual(power(0, 1), 0)
        self.assertEqual(power(3, 0), 1)
        self.assertEqual(power(2, -1), .5)

    def test_divide(self):
        print('testing divide function')
        self.assertEqual(divide(3, 0), 'undefined')
        self.assertEqual(divide(0, 2), 0)
        self.assertEqual(divide(1000000000, 10), 100000000)

if __name__ == '__main__':
        unittest.main()
