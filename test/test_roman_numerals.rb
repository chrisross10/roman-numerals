require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/roman_numerals'

describe 'roman_numerals' do
  it 'converts 1' do
    RomanNumerals.new().convert(1).must_equal 'i'
  end

  it 'converts 2' do
    RomanNumerals.new().convert(2).must_equal 'ii'
  end
end
