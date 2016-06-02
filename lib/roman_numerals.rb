class RomanNumerals
  def initialize(rules)
    @rules = rules.sort_by {|k,v| v.to_i}.reverse.to_h
  end

  def convert(arabic)
    output = ''
    result = arabic
    @rules.each do |key, value|
      while result >= key do
        output += value
        result -= key
      end
    end
    output
  end
end
