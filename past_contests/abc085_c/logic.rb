N, Y = gets.chomp.split(' ').map(&:to_i)

(0..N).each do |x|
  (0..(N-x)).each do |y|
    if Y == 10000 * x + 5000 * y + 1000 * (N - x - y)
      puts "#{x} #{y} #{N - x - y}"
      exit
    end
  end
end
puts '-1 -1 -1'

# N, Y = gets.chomp.split(' ').map(&:to_i)

# N.downto(0) do |x|
#   next if 10000 * x > Y
#   (N-x).downto(0) do |y|
#     next if 10000 * x + 5000 * y > Y
#     if Y == 10000 * x + 5000 * y + 1000 * (N - x - y)
#       puts "#{x} #{y} #{N - x - y}"
#       exit
#     end
#   end
# end
# puts '-1 -1 -1'
