N, K = gets.chomp.split(' ').map(&:to_i)
H = gets.chomp.split(' ').map(&:to_i).sort

K.times { H.pop }

puts H.empty? ? 0 : H.inject(&:+)
