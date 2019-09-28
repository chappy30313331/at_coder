antennas = 5.times.map{gets.chomp.to_i}
k = gets.chomp.to_i

(0..3).each do |i|
  (i+1..4).each do |j|
    if antennas[j] - antennas[i] > k
      puts ':('
      exit
    end
  end
end
puts 'Yay!'
