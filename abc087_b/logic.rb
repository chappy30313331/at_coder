A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

count = 0

(0..A).each do |a|
  (0..B).each do |b|
    y = X - 500 * a - 100 * b
    count += 1 if y >= 0 && y % 50 == 0 && y / 50 <= C
    # (0..C).each do |c|
    #   count += 1 if (X == 500 * a + 100 * b + 50 * c)
    # end
  end
end

puts count
