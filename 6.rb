sum_squares = (1..100).to_a.map {|n| n * n}.inject(:+)
square_sum = (1..100).to_a.inject(:+) ** 2

puts square_sum - sum_squares
