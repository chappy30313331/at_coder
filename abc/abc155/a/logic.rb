numbers = gets.chomp.split(' ').map(&:to_i).uniq

puts numbers.size == 2 ? 'Yes' : 'No'
