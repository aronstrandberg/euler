require_relative 'util'

class String
  def value
    self.chars.map {|ch| ch.ord - 'A'.ord + 1}.sum
  end
end

words = File.read('42-words.txt').split(',').map {|word| word.tr("\"", "") }
triangles = (1..100).map {|n| 0.5*n*(n+1) }
triangle_words = words.select {|word| triangles.include?(word.value)}
puts triangle_words.size
