n = gets.chomp.to_i

min = Float::INFINITY
(1..Math.sqrt(n).floor).each do |a|
  next unless n % a == 0
  b = n / a
  min = [min, a + b - 2].min
end

puts min
