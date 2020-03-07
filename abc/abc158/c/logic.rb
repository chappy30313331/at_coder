A, B = gets.chomp.split(' ').map(&:to_i)

(13..1262).each do |n|
  if (n * 0.08).floor == A && (n * 0.10).floor == B
    puts n
    exit
  end
end
puts -1
