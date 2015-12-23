def fib(n, cache = {})
  if n == 0 || n == 1
    return n
  end
  cache[n] ||= fib(n-1, cache) + fib(n-2, cache)
end


puts (1..33).to_a
  .map { |n| fib n }
  .select { |n| n.even? }
  .inject(:+)
