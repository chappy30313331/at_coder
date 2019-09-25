n, k = gets.chomp.split(' ').map(&:to_i)

sum = (1..n).inject(0) do |s, i|
  # p i
  if i < k
    s + (1r / n) * (1r / 2r) ** Math.log2(k.to_f / i).ceil
  else
    s + (1r / n)
  end
end

puts sum.to_f
