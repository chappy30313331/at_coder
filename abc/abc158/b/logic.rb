N, A, B = gets.chomp.split(' ').map(&:to_i)

if N <= A + B
  if N >= A
    puts A
  else
    puts N
  end
  exit
end

m = (N / (A + B).to_f).floor
o = N - m * (A + B)

puts m * A + [A, o].min
