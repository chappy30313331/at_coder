K, N = gets.chomp.split(' ').map(&:to_i)
A = gets.chomp.split(' ').map(&:to_i)

diffs = []
A.each_cons(2) do |ai, aj|
  diffs << aj -ai
end
diffs << A[0] + K - A[-1]

diffs.delete_at(diffs.index(diffs.max))
puts diffs.inject(&:+)
