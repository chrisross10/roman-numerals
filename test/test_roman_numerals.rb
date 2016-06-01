require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/roman_numerals'

describe 'roman_numerals' do
  it 'converts' do
    RomanNumerals.new().convert(1).must_equal 'i'
    RomanNumerals.new().convert(2).must_equal 'ii'
    RomanNumerals.new().convert(3).must_equal 'iii'
  end
end
