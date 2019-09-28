a, b, x = gets.chomp.split(' ').map(&:to_i)

first = (a % x == 0 ? a : a + x - a % x)
puts first > b ? 0 : (b - first) / x + 1
