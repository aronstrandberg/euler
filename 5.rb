# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

number = 2520
loop do
  results = (1..20).to_a.map { |i| number % i == 0}
  if !results.include?(false)
    puts number
    break
  end
  number += 2 # only need to check even numbers
end
