require_relative 'util'

class Integer
  def proper_divisors
    (1...self).select {|n| self % n == 0}
  end
end

def amicable_pair?(a, b)
  a.proper_divisors.sum == b && b.proper_divisors.sum == a && a != b
end

pairs = (2..10000).select do |n|
  amicable_pair?(n, n.proper_divisors.sum)
end

puts "There are #{pairs.size} amicable numbers with a sum of #{pairs.sum}"
