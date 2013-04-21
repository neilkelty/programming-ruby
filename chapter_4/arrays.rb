a = [3.14159, "pie", 99]
a.class   # => Array
a.length  # => 3
a[0]      # => 3.14159
a[1]      # => "pie"
a[2]      # => 99
a[3]      # => nil

b = Array.new
b.class   # => Array
b.length  # => 0
b[0] = "second"
b[1] = "array"
b         # => ["second", "array"]

a = [1, 3, 5, 7, 9]
a[-1]   # => 9
a[-2]   # => 7
a[-99]  # => nil

a = [1, 3, 5, 7, 9]
a[1, 3]   # => [3, 5, 7]
a[3, 1]   # => [7]
a[-3, 2]  # => [5, 7]

a = [1, 3, 5, 7, 9]
a[1..3]   # => [3, 5, 7]
a[1...3]  # => [5]
a[3..3]   # => [7]
a[-3..-1] # => [5, 7, 9]

a = [1, 3, 5, 7, 9]
a[1] = 'bat'          # => [1, 'bat', 5, 7, 9]
a[-3] = 'cat'         # => [1, 'bat', 'cat', 7, 9]
a[3] = [9, 8]         # => [1, 'bat', 'cat', [9, 8], 9]
a[6] = 99             # => [1, 'bat', 'cat', [9, 8], 9, nil, 99]

a = [1, 3, 5, 7, 9]
a[2, 2] = 'cat'       # => [1, 3, "cat", 9]
a[2, 0] = 'dog'       # => [1, 3, "dog", "cat", 9]
a[1, 1] = [9, 8, 7]   # => [1, 9, 8, 7, "dog", "cat", 9]
a[0..3] = []          # => ["dog", "cat", 9]
a[5..6] = 99, 98      # => ["dog", "cat", 9, nil, nil, 99, 98]

# push adds elements to the end of an array
stack = []
stack.push "red"
stack.push "green"
stack.push "blue"
p stack

# pop removes elements from the end of an array
puts stack.pop
puts stack.pop
puts stack.pop
p stack

# shift adds elements to the beginning/head of an array
# unshift removes elements from the beginning/head of an array
queue = p[]
queue.push "red"
queue.push "green"
puts queue.shift
puts queue.shift

array = [1, 2, 3, 4, 5, 6, 7] # array = [1..7] accomplishes the same task
p array.first(4)
p array.last(4)