require 'set'

N, X, Y = gets.chomp.split(' ').map(&:to_i)

memo = Set.new
graph = Array.new(N - 1) { Set.new }
(1..N).each_cons(2) do |a, b|
  graph[0] << Set[a, b]
  memo << Set[a, b]
end
graph[0] << Set[X, Y]
memo << Set[X, Y]

1.step(N - 1) do |k|
  graph[k - 1].each do |x|
    graph[0].each do |tmp|
      next if (x & tmp).size != 1
      next if memo.include?(x ^ tmp)

      graph[k] << (x ^ tmp)
      memo << (x ^ tmp)
    end
  end
end

graph.each do |g|
  puts g.size
end