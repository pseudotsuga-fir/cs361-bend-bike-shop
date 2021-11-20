class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    self.bike.price + (overall_weight * 2)
  end

  def bike_weight
    self.bike.weight
  end

  def luggage_weight
    self.bike.luggage.weight
  end

  def overall_weight
    bike_weight + luggage_weight
  end

end
