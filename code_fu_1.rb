#Print the second highest element within a list of numbers input from the command line

num = []
i = 0
ARGV.each { |x| num << x.to_i }

def  sort(num)
for j in 2..num.length
  key = num[j]
  i = j - 1
  while i > 0 and num[i] > key
    num[i+1] = num[i]
    i = i - 1
  end
  num[i+1] = key
end 
puts num
end
