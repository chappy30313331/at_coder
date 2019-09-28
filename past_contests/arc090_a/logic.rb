N = gets.chomp.to_i
A1 = gets.chomp.split(' ').map(&:to_i)
A2 = gets.chomp.split(' ').map(&:to_i)

sum1, sum2 = [0], [0]
(0..N-1).each do |n|
  sum1[n+1] = sum1[n] + A1[n]
  sum2[n+1] = sum2[n] + A2[n]
end
results = (1..N).map do |n|
  sum1[n-1] + A1[n-1] + sum2[N] - sum2[n-1]
end
puts results.max
