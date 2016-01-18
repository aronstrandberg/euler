require_relative 'util'

@pentagonals = {}
(1..10000).each do |n|
  @pentagonals[n*(3*n-1)/2] = n
end

def pentagonal_pair?(a, b)
  @pentagonals.key?(a+b) && @pentagonals.key?(b-a)
end

pairs = @pentagonals.keys.permutation(2).to_a

pentagonal_pairs = pairs.select { |p| pentagonal_pair?(p.first, p.last) }

differences = pentagonal_pairs.map { |p| p.last - p.first }
p differences.first
