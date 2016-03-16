require_relative 'util'

class Integer
  def permutation_of?(n)
    self.permutation.include?(n)
  end
end

(1000..9999).each do |a|
  if a.prime?
    b = a + 3330
    c = b + 3330
    if a.permutation_of?(b) && b.permutation_of?(c) && b.prime? && c.prime?
      puts [a, b, c].join('')
    end
  end
end
