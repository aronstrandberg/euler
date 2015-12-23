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

primes = eratosthenes(2_000_000).map { |p| p[:i] }
puts primes.inject(:+) - 1 # because 1 doesn't count as a prime according to proect euler
