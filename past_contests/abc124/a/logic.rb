a, b = gets.chomp.split(' ').map(&:to_i)

if a >= b + 2
  puts 2 * a - 1
  exit
elsif b >= a + 2
  puts 2 * b - 1
  exit
else
  puts a + b
  exit
end
