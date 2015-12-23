# shamelessly adapted from http://stackoverflow.com/a/24169277/849891

def factors(n)
  wheel = [1,2,2,4,2,4,2,4,6,2,6]
  w, f, fs = 0, 2, []
  while f*f <= n
    while n % f == 0
      fs.push f
      n = n/f
    end
    f += wheel[w]
    w += 1
    w = 3 if w == 11
  end
  fs.push n if n > 1
  fs
end

puts factors(600851475143).max
