require_relative 'util'

n = 3

total = 0
loop do
  n += 1
  factorials = n.digits.map(&:factorial)
  sum = factorials.sum
  if n == sum
    total += sum
    puts "#{n} #{factorials} #{sum}"
  end
  if n % 100000 == 0
    puts "#{n} #{factorials} #{sum}"
  end
  break if n > sum && n > 100000
  # break if factorials.max > sum
end

puts total
