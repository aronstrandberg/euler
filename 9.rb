# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def find
  (1..1000).each do |a|
    (1..1000).each do |b|
      (1..1000).each do |c|
        if a*a + b*b == c*c && a + b + c == 1000
          return [a, b, c]
        end
      end
    end
  end
end

puts find
puts find().inject(:*)
