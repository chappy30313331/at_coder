N = gets.chomp.to_i
X = gets.chomp.split(' ').map(&:to_i)

sums = (X.min..X.max).map do |n|
  X.inject(0) do |sum, x|
    sum += (n - x) ** 2
  end
end

puts sums.min
