/*
https://www.codewars.com/kata/57a4d500e298a7952100035d/train/dart
Date: 2023-08-06 16:31
Title: Hex to Decimal
Difficulty: 8 kyu
Instructions:
- Complete the function which converts hex number (given as a string)
  to a decimal number.
*/

import "package:test/test.dart";

void main() {
  group("Fixed tests", () {
    test("Testing for 1", () {
      expect(hexToDec("1"), equals(1));
    });
    test("Testing for a", () {
      expect(hexToDec("a"), equals(10));
    });
    test("Testing for 10", () {
      expect(hexToDec("10"), equals(16));
    });
    test("Testing for FF", () {
      expect(hexToDec("FF"), equals(255));
    });
    test("Testing for -C", () {
      expect(hexToDec("-C"), equals(-12));
    });
  });
}

int hexToDec(String hexString) => int.parse(hexString, radix: 16);
