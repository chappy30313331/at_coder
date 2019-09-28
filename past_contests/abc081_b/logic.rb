n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

count = 1

while a.all?{|num| num % (2 ** count) == 0}
  count += 1
end

puts count - 1
