require 'prime'

MILLION = 1_000_000

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
end

class Array
  def sum
    self.reduce(:+)
  end

  def product
    self.reduce(:*)
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
