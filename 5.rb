number = 2520
loop do
  results = (1..20).to_a.map { |i| number % i == 0}
  if !results.include?(false)
    puts number
    break
  end
  number += 2 # only need to check even numbers
end
