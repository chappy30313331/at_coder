a, b, x = gets.chomp.split(' ').map(&:to_f)

if x >= a ** 2 * b / 2.0
  puts Math.atan((a ** 2 * b -  x) * 2 / a ** 3) * 180 / Math::PI
else
  puts (Math::PI / 2 - Math.atan(2 * x / (a * b ** 2))) * 180 / Math::PI
end
