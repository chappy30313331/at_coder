s = gets.chomp.split('')

flag = 'No'
s.combination(2) do |a, b|
  flag = 'Yes' if a != b
end

puts flag
