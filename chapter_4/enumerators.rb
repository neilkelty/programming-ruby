a = [1, 3, "cat"]
h = { dog: "canine", fox: "vulpine"}

# Create Enumerators
enum_a = a.to_enum
enum_h = h.to_enum

enum_a.next # => 1
enum_h.next # => [:dog, "canine"]
enum_a.next # => 3
enum_h.next # => [:fox, "vulpine"]

a = [1, 3, "cat"]
enum_a = a.each # create an Enumerators using an internal iterator

enum_a.next # => 1
enum_a.next # => 3

short_enum = [1, 2, 3].to_enum
long_enum = ('a'..'z').to_enum

loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

puts

result = []
['a', 'b', 'c'].each_with_index { |item, index| result << [item, index]  }
p result # => [["a", 0], ["b", 1], ["c", 2]]

puts

result = []
"cat".each_char.each_with_index { |item, index| result << [item, index] }
p result # => [["c", 0], ["a", 1], ["t", 2]]

puts

enum = "cat".enum_for(:each_char)
p enum.to_a # => ["c", "a", "t"]

puts

enum_in_threes = (1..10).enum_for(:each_slice, 3)
p enum_in_threes.to_a # => [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]]

puts