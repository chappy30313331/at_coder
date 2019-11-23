n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

cumulative_sum = Array.new(n + 1)
cumulative_sum[0] = 0
n.times { |i| cumulative_sum[i+1] = a[i] + cumulative_sum[i] }

half = a.inject(&:+) / 2.0

i = cumulative_sum.map { |s| (s - half).abs }.min

puts (i * 2).to_i
