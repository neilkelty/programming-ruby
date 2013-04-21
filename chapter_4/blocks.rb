sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum += square
end
puts sum

puts

value = "some shape"
[1, 2].each { |value| puts value  }
puts value

puts

square = "some shape"
sum = 0
[1, 2, 3, 4].each do |value; square|
  square = value * value # this is a different variable
  sum += square
end
puts sum
puts square