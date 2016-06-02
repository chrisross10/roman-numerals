class RomanNumerals
  def initialize(rules)
    @rules = rules
  end

  def convert(input)
    output = ''
    if (@rules.key?(input))
      output = @rules[input]
      return output
    end
    until 1 > input
      output += 'i'
      input -= 1
    end
    return output
  end
end
