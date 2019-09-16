a, b = gets.chomp.split(' ').map(&:to_i)

product = a * b
puts (product % 2 == 0 ? 'Even' : 'Odd')
