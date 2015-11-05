#Print the second highest element within a list of numbers input from the command line

def  sort(num)
  for j in 2..(num.length-1)
    key = num[j]
    i = j - 1
    while i > 0 and num[i] > key
      num[i+1] = num[i]
      i = i - 1
    end
    num[i+1] = key
  end
  num = num.uniq && num.reverse
  index = num.each_index.select{|i| num[i] >= 0}
  value = index[1]
  if num.length < 2
    puts "#{num[0]}"
  else
    puts "second highest number is #{num[value]}"
  end
end
numbers = gets
num = numbers.split.map(&:to_i)
sort(num)
