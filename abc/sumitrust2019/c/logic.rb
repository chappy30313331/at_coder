x = gets.chomp.to_i

n = x / 100
m = x % 100

puts m <= n * 5 ? 1 : 0
