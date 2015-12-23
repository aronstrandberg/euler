puts (1...1000).to_a.
  select { |n| n % 3 == 0 || n % 5 == 0 }
  .inject(:+)
