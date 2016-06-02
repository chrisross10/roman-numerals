require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/roman_numerals'

describe 'roman_numerals' do
  it 'converts' do
    rules = {1 => 'i', 4 => 'iv', 5 => 'v'}
    RomanNumerals.new(rules).convert(1).must_equal 'i'
    RomanNumerals.new(rules).convert(2).must_equal 'ii'
    RomanNumerals.new(rules).convert(3).must_equal 'iii'
    RomanNumerals.new(rules).convert(4).must_equal 'iv'
    RomanNumerals.new(rules).convert(5).must_equal 'v'
    RomanNumerals.new(rules).convert(6).must_equal 'vi'
  end
end
