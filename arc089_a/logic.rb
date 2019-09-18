N = gets.chomp.to_i
t0, x0, y0 = 0, 0, 0
readlines.each do |line|
  t, x, y = line.chomp.split(' ').map(&:to_i)
  dx = (x - x0).abs
  dy = (y - y0).abs
  if t - t0 - dx - dy >= 0 && (t - t0 - dx - dy) % 2 == 0
    t0, x0, y0 = t, x, y
  else
    puts :No
    exit
  end
end
puts :Yes
