N = gets.chomp.to_i

gohyaku = N / 500
go = (N - 500 * gohyaku) / 5

puts 1000 * gohyaku + 5 * go
