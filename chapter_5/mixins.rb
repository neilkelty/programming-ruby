module Debug
  def who_am_i?
    "#{self.class.name} (id: #{self.object_id}): #{self.name}"
  end
end

class Phonograph
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
  # ..
end

class EightTrack
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
  # ..
end
ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")

ph.who_am_i? # => "Phonograph (id: xxxxxxxxxxxxxxx): West End Blues"
et.who_am_i? # => "EightTrack (id: xxxxxxxxxxxxxxx): Surrealistic Pillow"

class Person
  include Comparable
  attr_reader :name

  def initialize name
    @name = name  
  end

  def to_s
    "#{name}"
  end

  def <=>(other)
    self.name <=> other.name
  end
end

p1 = Person.new("Matz")
p2 = Person.new("Guido")
p3 = Person.new("Larry")

# Compare a couple of names
if p1 > p2
  puts "#{p1.name}'s name > #{p2.name}'s name"
end

# Sort an array of Person objects

puts "Sorted list:"
puts [p1, p2, p3].sort