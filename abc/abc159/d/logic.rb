N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

def combi(n)
  return 0 if n <= 1
  return n * (n - 1) / 2
end

number_counts = Hash.new(0).tap { |h| A.each { |a| h[a] += 1 } }
sums = number_counts.map { |k, v| [k, combi(v)] }.to_h
all_sum = sums.inject(0) { |s, k_v| s += k_v[1] }

A.each do |i|
  puts all_sum - sums[i] + combi(number_counts[i] - 1)
end
