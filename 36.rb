require_relative 'util'

class String
  def palindrome?
    self.reverse == self
  end
end

palindromes = (1..MILLION).select { |n|
  n.to_s.palindrome? && n.to_s(2).palindrome?
}

puts "There are #{palindromes.size} numbers with a sum of #{palindromes.sum}"
