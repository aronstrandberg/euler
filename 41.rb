require_relative 'util'

class Integer
  def pandigital?
    self.digits.uniq.sort == (1..self.digits.size).to_a
  end
end

pandigital_primes = (1_000_000..10_000_000).select { |n| n.pandigital? && n.prime? }

puts pandigital_primes.max

