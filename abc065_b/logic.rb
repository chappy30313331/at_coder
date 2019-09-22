N = gets.to_i
A = readlines.map(&:to_i)

next_button = 1
1.upto(N) do |i|
  next_button = A[next_button-1]
  if next_button == 2
    puts i
    exit
  end
end

puts -1
