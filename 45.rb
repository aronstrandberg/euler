triangles = (285..10000).map { |n| n*(n+1)/2 }
pentagons = (1..10000).map { |n| n*(3*n+1)/2 }
hexagons = (1..10000).map { |n| n*(2*n-1) }

puts triangles.find { |n| pentagons.include?(n) && hexagons.include?(n) }
