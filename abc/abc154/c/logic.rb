N = gets.to_i
A = gets.chomp.split(' ').map(&:to_i)

hash = {}
A.each do |a|
  if hash[a]
    hash[a] += 1
  else
    hash[a] = 1
  end
end
puts hash.max { |a, b| a[1] <=> b[1] }[1] == 1 ? 'YES' : 'NO' 
