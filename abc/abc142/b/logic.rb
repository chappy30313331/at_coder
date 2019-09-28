n, k = gets.chomp.split(' ').map(&:to_i)
h = gets.chomp.split(' ').map(&:to_i)

puts h.count { |i| i >= k }
