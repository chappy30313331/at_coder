n = gets.chomp.to_i

b = (1..9).to_a.repeated_combination(2).map { |c| c[0] * c[1]}.uniq
puts b.include?(n) ? 'Yes' : 'No'
