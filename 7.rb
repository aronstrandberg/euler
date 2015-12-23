# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

# uses sieve of eratosthenes to calculate a lot of primes,
# then select the 10001st

def eratosthenes(n)
  a = Array.new(n)
  a.each_index do |i|
    a[i] = {i: i, prime: true}
  end
  (2..Math.sqrt(n)).each do |i|
    if a[i][:prime] == true
      j = i * i
      while j < n
        a[j][:prime] = false
        j += i
      end
    end
  end
  a.select {|h| h[:prime] == true}
end

primes = eratosthenes(200000)
puts primes[10002][:i] # 10002 because of 0 indexing or something
