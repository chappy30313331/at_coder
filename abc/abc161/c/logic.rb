n, K = gets.chomp.split(' ').map(&:to_i)

if n >= K
  n = n - K * (n / K)
end

if n <= K / 2
  puts n
else
  puts (n - K).abs
end