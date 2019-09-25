s = gets.chomp

def mm?(i)
  1 <= i && i <= 12
end

s1 = s[0,2].to_i
s2 = s[2,2].to_i

if mm?(s1)
  if mm?(s2)
    puts 'AMBIGUOUS'
  else
    puts 'MMYY'
  end
else
  if mm?(s2)
    puts 'YYMM'
  else
    puts 'NA'
  end
end
