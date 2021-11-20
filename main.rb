!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'
require_relative 'luggage'

items = [:apple, :water, :protein_bar]

bike = Bike.new(
    :id => 1,
    :color => :pink,
    :price => 99.99,
    :luggage => Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, extra_items, self)
)

rental = Rental.new(bike)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"
