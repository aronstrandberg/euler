require_relative 'util'

class Integer
  def truncatable_prime?
    digits = self.digits
    0.upto(digits.size - 1) do |i|
      if digits[i..digits.size].join.to_i.prime? == false
        return false
      end
    end
    digits.size.downto(0) do |i|
      if digits[0..i].join.to_i.prime? == false
        return false
      end
    end
    true
  end
end

result = (10..MILLION).select(&:truncatable_prime?)
puts result.size
puts result.sum

