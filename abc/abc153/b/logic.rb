H, N = gets.chomp.split(' ').map(&:to_i)
A = gets.chomp.split(' ').map(&:to_i)

puts H <= A.inject(&:+) ? 'Yes' : 'No'
