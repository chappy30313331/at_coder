a = gets.chomp.split(' ').map(&:to_i)

if a.all? { |n| 0 < n && n < 10 }
  puts a[0] * a[1]
else
  puts -1
end
