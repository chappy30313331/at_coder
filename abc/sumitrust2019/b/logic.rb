n = gets.chomp.to_i

candidates = [(n / 1.08).ceil, (n / 1.08).floor].uniq
result = candidates.find { |c| (c * 1.08).floor == n }
puts result.nil? ? ':('  : result
