s = gets.chomp

chars = ('a'..'z').to_a
puts chars[chars.index(s) + 1]
