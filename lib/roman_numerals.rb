class RomanNumerals
  def initialize(rules)
    @rules = rules.sort_by {|k,v| v}.reverse.to_h
  end

  def convert(arabic)
    output = ''
    @rules.each do |key, value|
      result = arabic
      while result >= key do
        output += value
        result -= key
      end
      break if result == 0
    end
    output
  end
end
