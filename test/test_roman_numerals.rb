require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/roman_numerals'

describe 'roman_numerals' do
  it 'converts' do
    rules = {1 => 'i', 4 => 'iv', 5 => 'v', 9 => 'ix', 10 => 'x', 40 => 'xl', 50 => 'l', 90 => 'xc', 100 => 'c', 400 => 'cd', 500 => 'd', 900 => 'cm', 1000 => 'm'}
    RomanNumerals.new(rules).convert(1).must_equal 'i'
    RomanNumerals.new(rules).convert(2).must_equal 'ii'
    RomanNumerals.new(rules).convert(3).must_equal 'iii'
    RomanNumerals.new(rules).convert(4).must_equal 'iv'
    RomanNumerals.new(rules).convert(5).must_equal 'v'
    RomanNumerals.new(rules).convert(6).must_equal 'vi'
    RomanNumerals.new(rules).convert(7).must_equal 'vii'
    RomanNumerals.new(rules).convert(8).must_equal 'viii'
    RomanNumerals.new(rules).convert(9).must_equal 'ix'
    RomanNumerals.new(rules).convert(10).must_equal 'x'
    RomanNumerals.new(rules).convert(100).must_equal 'c'
    RomanNumerals.new(rules).convert(457).must_equal 'cdlvii'
    RomanNumerals.new(rules).convert(666).must_equal 'dclxvi'
    RomanNumerals.new(rules).convert(999).must_equal 'cmxcix'
    RomanNumerals.new(rules).convert(1000).must_equal 'm'
  end
end
