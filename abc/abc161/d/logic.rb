K = gets.chomp.to_i

k = 0
n = 0
q = (1..9).to_a

until k == K
  k += 1
  n = q.shift
  q << "#{n.to_s}#{(n % 10 - 1).to_s}".to_i if n % 10 > 0
  q << "#{n.to_s}#{(n % 10).to_s}".to_i
  q << "#{n.to_s}#{(n % 10 + 1).to_s}".to_i if n % 10 < 9
end

puts n
