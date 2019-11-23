x, y = gets.chomp.split(' ').map(&:to_i)

prize_monies = Hash.new(0).merge({ 1 => 300000, 2 => 200000, 3 => 100000 })

sum = prize_monies[x] + prize_monies[y]
sum += 400000 if x == 1 && y == 1

puts sum
