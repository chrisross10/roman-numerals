require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/roman_numerals'

describe 'roman_numerals' do
  it 'converts' do
    rules = {1 => 'i', 4 => 'iv', 5 => 'v', 9 => 'ix', 10 => 'x'}
    #rules = {10 => 'x', 9 => 'ix', 5 => 'v', 4 => 'iv', 1 => 'i'}
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
  end
end
