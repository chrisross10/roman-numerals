class RomanNumerals
  def convert(input)
    rn = ''
    until 1 > input
      rn += 'i'
      input -= 1
    end
    return rn
  end
end
