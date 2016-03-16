require_relative 'util'

class String
  def value
    self.chars.map {|ch| ch.ord - 'A'.ord + 1}.sum
  end
end

names = File.read('22-names.txt').split(',').map {|name| name.tr("\"", "") }

names.sort!

scores = []
names.each_with_index do |name, index|
  scores.push name.value * (index + 1)
end

puts scores.sum
