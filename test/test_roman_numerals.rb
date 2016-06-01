require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/roman_numerals'

describe 'roman_numerals' do
  it 'converts 1' do
    RomanNumerals.new().convert(1).must_equal 'i'
  end
end
