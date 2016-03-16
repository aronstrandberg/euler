require_relative 'util'

class Integer
  def pandigital?
    self.digits.uniq.sort == (0...self.digits.size).to_a
  end
end

pandigitals = (0..9).to_a.permutation.map(&:join)

values = pandigitals.select do |n|
  n[1, 3].to_i % 2 == 0 &&
  n[2, 3].to_i % 3 == 0 &&
  n[3, 3].to_i % 5 == 0 &&
  n[4, 3].to_i % 7 == 0 &&
  n[5, 3].to_i % 11 == 0 &&
  n[6, 3].to_i % 13 == 0 &&
  n[7, 3].to_i % 17 == 0
end

p values.map(&:to_i).sum


