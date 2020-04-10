class Drink
    attr_reader :cost
   cost = 0

  def cost
    @cost
  end

end

class CondimentDecorator < Drink
   cost = 0
end

class Size < Drink
    cost = 0
 end

class HouseBlend < Drink


  def initialize
    @cost = 89
  end

end

class DarkRoast < Drink
  def initialize
    @cost = 99
    
  end
end

class Espresso < Drink
  def initialize
    @cost = 199
  
  end
end

class Decaf < Drink
  def initialize
    @cost = 105
    
  end
end



class SteamedMilk < CondimentDecorator
    attr_reader :drink
    drink = Drink.new
  def initialize(drink)
    @drink = drink
  end

  def cost
    10 + drink.cost
  end
end

class Mocha < CondimentDecorator
    attr_reader :drink
    drink = Drink.new

  def initialize(drink)
    @drink = drink
  end

  def cost
    20 + drink.cost
  end
end

class Soy < CondimentDecorator
    attr_reader :drink
    drink = Drink.new

  def initialize(drink)
    @drink = drink
  end

  def cost
    15 + drink.cost
  end
end

class Whip < CondimentDecorator
    attr_reader :drink
  drink = Drink.new

  def initialize(drink)
    @drink = drink
  end


  def cost
    10 + drink.cost
  end
end

class Small < Size
    attr_reader :drink
  drink = Drink.new

  def initialize(drink)
    @drink = drink
  end


  def cost
    1 * drink.cost
  end
end


class Medium < Size
    attr_reader :drink
  drink = Drink.new

  def initialize(drink)
    @drink = drink
  end


  def cost
    2 * drink.cost
  end
end

class Large < Size
    attr_reader :drink
  drink = Drink.new

  def initialize(drink)
    @drink = drink
  end


  def cost
    3 * drink.cost
  end
end


drink = DarkRoast.new
drink = Whip.new(drink)
size = Medium.new(drink)
puts size.cost
