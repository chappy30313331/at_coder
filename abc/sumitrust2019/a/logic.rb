m1, d1 = gets.chomp.split(' ').map(&:to_i)
m2, d2 = gets.chomp.split(' ').map(&:to_i)

date1 = Time.new(2019, m1, d1)
date2 = Time.new(2019, m2, d2)

puts date1.month == date2.month ? 0 : 1
