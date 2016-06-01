class RomanNumerals
  def initialize(rules)
    @rules = rules
  end

  def convert(input)
    @rules[input]
  end
end
