n = gets.chomp.to_i
h = gets.chomp.split(' ').map(&:to_i)

max = 0
count = h.inject(0) do |count, i|
  if i >= max
    max = i
    count + 1
  else
    count
  end
end
puts count
