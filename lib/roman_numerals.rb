class RomanNumerals
  def initialize(rules)
    @rules = rules.sort_by {|k,v| v}.reverse.to_h
  end

  def convert(arabic)
    output = ''
    result = arabic
    @rules.each do |key, value|
      while result >= key do
        output += value
        result -= key
        puts 'appending... ' + ', ' + output + ', ' + value + ', ' + result.to_s + ', ' + key.to_s
      end
      break if result == 0
    end
    output
  end
end
