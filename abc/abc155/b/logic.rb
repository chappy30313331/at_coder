N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

puts A.any? { |a| a.even? && (a % 3 != 0 && a % 5 != 0)} ? 'DENIED' : 'APPROVED'
