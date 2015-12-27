# By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

#      3
#     7 4
#    2 4 6
#   8 5 9 3

# That is, 3 + 7 + 4 + 9 = 23.

# Find the maximum total from top to bottom of the triangle below:


t = [
                              %w(75),
                            %w(95 64),
                          %w(17 47 82),
                        %w(18 35 87 10),
                      %w(20 04 82 47 65),
                    %w(19 01 23 75 03 34),
                  %w(88 02 77 73 07 63 67),
                %w(99 65 04 28 06 16 70 92),
              %w(41 41 26 56 83 40 80 70 33),
            %w(41 48 72 33 47 32 37 16 94 29),
          %w(53 71 44 65 25 43 91 52 97 51 14),
        %w(70 11 33 28 77 73 17 78 39 68 17 57),
      %w(91 71 52 38 17 14 91 43 58 50 27 29 48),
    %w(63 66 04 68 89 53 67 30 73 16 69 87 40 31),
  %w(04 62 98 27 23 09 70 98 73 93 38 53 60 04 23)
].map { |array| array.map(&:to_i) }

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
