# What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

class Integer
  def number_of_digits
    return self.to_s.chars.size
  end
end

# http://stackoverflow.com/a/24439070
def fib(n)
  raise "fib not defined for negative numbers" if n < 0
  new, old = 1, 0
  n.times {new, old = new + old, new}
  old
end

value = 0
n = 1
loop do
  value = fib(n)
  if value.number_of_digits >= 1000
    p n
    break
  end
  n += 1
end
