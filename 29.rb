powers = []

(2..100).each do |a|
  (2..100).each do |b|
    powers.push a ** b
  end
end

puts powers.uniq!.size
