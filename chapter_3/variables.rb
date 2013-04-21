person = "Tim"
puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}"
puts "and a value of '#{person}"

puts

# It all comes back to the fact that variables hold references to objects, 
# not the objects themselves. Assigning person1 to person2 doesn’t 
# create any new objects; it simply copies person1’s object reference 
# to person2 so that both person1 and person2 refer to the same object.

person1 = "Tim"
person2 = person1
person1[0] = 'J'

puts "person1 is #{person1}"
puts "person2 is #{person2}"

puts

# Duplicating the object instead.

person1 = "Tim"
person2 = person1.dup
person1[0] = "J"

puts "person1 is #{person1}"
puts "person2 is #{person2}"

# The freeze method can be used to prevent modifications to objects.
person1 = "Tim"
person1.freeze
