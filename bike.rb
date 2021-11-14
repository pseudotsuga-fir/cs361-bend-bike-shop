# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false, pannier)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @pannier = pannier
  end

  def rent!
    self.rented = true
  end

end

# Pannier

class Pannier

  MAX_CARGO_ITEMS = 10

  attr_accessor :cargo_contents

  def initialize
    @cargo_contents = []
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end

end
