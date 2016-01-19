require_relative 'util'

class Integer
  def distinct_prime_factors
    self.prime_factors.uniq.size
  end
end

(1..1000000).each_cons(4) do |a|
  if a.all? { |n| n.distinct_prime_factors == 4 }
    puts a[0]
    break
  end
end
