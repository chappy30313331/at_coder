N, M = gets.chomp.split(' ').map(&:to_i)

if M == 0
  puts ('0 0')
  exit
end

hash = {}
M.times do
  pi, si = gets.chomp.split(' ')
  if hash.has_key?(pi)
    if si == 'AC' || hash[pi][:ac]
      hash[pi][:ac] = true
    else
      hash[pi][:wa_count] += 1
    end
  else
    if si == 'AC'
      hash[pi] = { ac: true, wa_count: 0 }
    else
      hash[pi] = { ac: false, wa_count: 1 }
    end
  end
end

ac_count = hash.count { |_, v| v[:ac] }
wa_count = hash.inject(0) { |a, b| a += (b[1][:ac] ? b[1][:wa_count] : 0) }

puts "#{ac_count} #{wa_count}"
