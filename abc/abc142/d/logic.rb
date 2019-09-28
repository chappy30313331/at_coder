require 'prime'
a, b = gets.chomp.split(' ').map(&:to_i)
p a.gcd(b).prime_division.size + 1
