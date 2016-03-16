require_relative 'util'

fraction = (0..200000).to_a.join.chars.to_integers
values = fraction.values_at(1, 10, 100, 1000, 10000, 100000, 1000000)

puts values.reduce(:*)
