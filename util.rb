require 'prime'

MILLION = 1_000_000

def primes_upto(n)
  Prime.each(n).to_a
end

class Integer
  def digits
    return self.to_s.chars.to_a.map(&:to_i)
  end

  def factorial
    (1..self).reduce(:*) || 1
  end

  def prime?
    Prime.prime?(self)
  end

  def permutation
    self.digits.permutation.map(&:join).map(&:to_i).uniq
  end

  def prime_factors
    n = self
    wheel = [1,2,2,4,2,4,2,4,6,2,6]
    w, f, fs = 0, 2, []
    while f*f <= n
      while n % f == 0
        fs.push f
        n = n/f
      end
      f += wheel[w]
      w += 1
      w = 3 if w == 11
    end
    fs.push n if n > 1
    fs
  end
end

class Array
  def sum
    self.reduce(0, :+)
  end

  def to_integers
    self.map(&:to_i)
  end
end

class String
  def sort
    self.chars.sort.join
  end
end
