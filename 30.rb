require_relative 'util'

numbers = (2..1_000_000)
  .select { |i| i == i.digits.map {|n| n ** 5}.inject(:+) }

p numbers.inject(:+)
