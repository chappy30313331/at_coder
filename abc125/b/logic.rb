n = gets.chomp.to_i
v = gets.chomp.split(' ').map(&:to_i)
c = gets.chomp.split(' ').map(&:to_i)

sum = (0..n-1).inject(0) do |s, i|
  v[i] > c[i] ? s + v[i] - c[i] : s
end
puts sum
