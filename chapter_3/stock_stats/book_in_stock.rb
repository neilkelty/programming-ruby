class BookInStock

  attr_reader :isbn, :price
  # Note: This doesn't create the instance variables.
  # This is the same as writing:
  # def isbn
  #   @isbn
  # end

  # def price
  #   @price
  # end

  # attr_accessor :price
  # This is the same as writing:
  # def price=(new_price)
  #   @price = new_price
  # end

  def initialize (isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  # def price_in_cents
  #   Integer(price*100 + 0.5)
  # end

  # def to_s
  #   "ISBN: #{@isbn}, price: #{@price}"
  # end
end

# b1 = BookInStock.new("isbn1", 3)
# p b1

# b2 = BookInStock.new("isbn2", 3.14)
# p b2

# b3 = BookInStock.new("isbn3", "5.67")
# p b3

# b4 = BookInStock.new('isbn4', 33.80)
# puts "ISBN = #{b4.isbn}"
# puts "Price = #{b4.price}"
# b4.price *= 0.75 # discount price
# puts "New price = #{b4.price}"
# puts "Price in cents = #{b4.price_in_cents}"