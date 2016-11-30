require_relative 'util'

primes = primes_upto(MILLION)

sum = 0
answer = []
primes.each do |prime|
  if sum + prime < MILLION
    sum += prime
    answer << prime
  end
end

highest = primes_upto(sum).last
p highest
