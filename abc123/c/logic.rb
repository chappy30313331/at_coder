N = gets.chomp.to_i
capacities = 5.times.map { gets.chomp.to_i }

puts N / capacities.min + (capacities.min == 1 ? 4 : 5)

# people = [N, 0, 0, 0, 0, 0]

# minutes = 0
# while people[0,5].any? { |i| i > 0 }
#   p people
#   diffs = (1..5).map { |i| people[i-1] > capacities[i-1] ? capacities[i-1] : people[i-1] }
#   diffs.each_with_index do |diff, i|
#     people[i] -= diff
#     people[i+1] += diff
#   end
#   minutes += 1
# end

# puts minutes

