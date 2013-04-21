def three_times
  yield
  yield
  yield
end

three_times { puts "Hello" }

puts

def fib_up_to(max)
  i1, i2 = 1, 1       # parallel assignment (i1 = 1 and i2 = 1)
  while i1 <= max
    yield i1
    i1, i2 = i2, i1 + i2
  end
end

fib_up_to(1000) { |f| print f, " " }

puts
puts

class Array
  def find
    for i in 0...size
      value = self[i]
      return value if yield(value)
    end
    return nil
  end
end

puts [1, 3, 5, 7, 9].find { |v| v*v > 30 } # => 7

puts

[1, 3, 5, 7].each { |i| puts i }

puts

puts ["H", "A", "L"].collect { |x| x.succ } # => ["I", "B", "M"]

puts

# Commenting this out because it requires some directory massaging
# f = File.open("chapter_4/testfile.txt")
# f.each do |line|
#   puts "The line is: #{line}"
# end
# f.close
# 
# puts

puts [1, 3, 5, 7].inject(0) { |sum, element| sum + element  }         # => 16
puts [1, 3, 5, 7].inject(1) { |product, element| product * element }  # => 105

puts [1, 3, 5, 7].inject { |sum, element| sum + element  }            # => 16
puts [1, 3, 5, 7].inject { |product, element| product * element  }    # => 105

puts [1, 3, 5, 7].inject(:+) # => 16
puts [1, 3, 5, 7].inject(:*) # => 105
























