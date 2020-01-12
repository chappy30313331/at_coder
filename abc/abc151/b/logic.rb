N, K, M = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

sum = a.inject(0) { |s, i| s += i }
sub = N * M - sum

score = if sub < 0
  0
elsif sub > K
  -1
else
  sub
end

puts score
