array = gets.chomp.split('')
Q = gets.chomp.to_i

flag = true

Q.times do
  q = gets.chomp.split(' ')
  if q.size == 1
    flag = !flag
  else
    if q[1] == '2'
      if flag
        array.push(q[2])
      else
        array.unshift(q[2])
      end
    else
      if flag
        array.unshift(q[2])
      else
        array.push(q[2])
      end
    end
  end
end

puts flag ? array.join : array.reverse.join
