# By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

#      3
#     7 4
#    2 4 6
#   8 5 9 3

# That is, 3 + 7 + 4 + 9 = 23.

# Find the maximum total from top to bottom in triangle.txt,
# a 15K text file containing a triangle with one-hundred rows.

t = File.read("67-triangle.txt").lines.map { |line| line.split(" ").map(&:to_i) }

def max_path_in_triangle(triangle)
  n = triangle.size - 1
  v = Array.new(triangle.size) { Array.new(triangle.last.size) }
  0.upto(n) do |j|
    v[n][j] = triangle[n][j]
  end
  (n-1).downto(0) do |i|
    0.upto(i) do |j|
      v[i][j] = triangle[i][j] + [v[i+1][j], v[i+1][j+1]].max
    end
  end
  return v[0][0]
end

puts max_path_in_triangle(t)
