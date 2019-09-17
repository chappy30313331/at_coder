N, A, B = gets.chomp.split(' ').map(&:to_i)

def sum(n)
  sum = 0
  while(n > 0)
    sum += n % 10
    n /= 10
  end
  sum
end

sum = 0
(1..N).each do |n|
  s = sum(n)
  sum += n if A <= s && s <= B
end

puts sum
