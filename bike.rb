# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(args)
    @id = args[:id]
    @color = args[:color] || :blue
    @price = args[:price] || 200
    @weight = STANDARD_WEIGHT]
    @luggage = args[:luggage]
  end

end
