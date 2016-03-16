require_relative 'util'

puts (1..1000).map { |n| n ** n }.sum.digits.last(10).join
