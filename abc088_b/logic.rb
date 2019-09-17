N = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i).sort

alice = 0
bob = 0

((N + 1) / 2).times do
  alice += a.pop
  bob += a.pop unless a.empty?
end

puts alice - bob
