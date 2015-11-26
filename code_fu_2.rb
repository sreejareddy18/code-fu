# Print the neighbors of an element in a 3x3 integer matrix, given as input from the command line

puts "enter the dimension of matrix"
d = gets
d = d.to_i
m = Array.new(d){Array.new(d)}
puts "Enter elements"
for i in 0..(d - 1)
  for j in 0..(d - 1)
    m[i][j] = gets.to_i
  end
end
def neighbour(m,d)
  puts "enter value for which neighbours are to be found:"
  num = gets.to_i
  for i in 0..(d - 1)
    for j in 0..(d - 1)
      if num == m[i][j]
        x = i
        y = j
      end
    end
  end
puts "neighbours are"
  for i in 0..(d - 1)
    for j in 0..(d - 1)
      if (i == x-1 || i == x+1 || i == x) && (j == y-1 || j == y+1 || j == y)
        if m[i][j] != num
          puts m[i][j]
        end
      end
    end
  end
end
p m
neighbour(m,d)
