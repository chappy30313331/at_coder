if !ENV['RUBY_THREAD_VM_STACK_SIZE']
  exec({'RUBY_THREAD_VM_STACK_SIZE'=>'1000000000'}, '/usr/bin/ruby', $0)
end

N = gets.chomp.to_i

def power(n)
  return 1 if n == 1
  (n * power(n-1)) % (10 ** 9 + 7)
end

puts power(N)
