H, W = gets.chomp.split(' ').map(&:to_i)

result = []
grid = readlines.map { |line| line.chomp.split('').map { |cell| cell == '.' ? 0 : 1 }.push(0) }.push(Array.new(W + 1, 0))
(0..H-1).each do |i|
  result[i] = []
  (0..W-1).each do |j|
    result[i][j] = grid[i][j] == 1 ? '#' : 
      grid[i-1][j-1] + grid[i-1][j] + grid[i-1][j+1] +
      grid[i][j-1]   +                grid[i][j+1] +
      grid[i+1][j-1] + grid[i+1][j] + grid[i+1][j+1]
  end
end

puts result.map { |row| row.join('') }.join("\n")
