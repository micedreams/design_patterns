class FlyBehaviour
  def initalize(duck)
    @duck = duck
  end

  def fly
    if duck.class == DecoyDuck || RubberDuck
      puts "I dont fly"
    else
      puts("flying duck")
    end
  end
end

class RocketPowerdFlyBehaviour
    def fly
        puts("using rocket powered flight")
    end
end

class QuackBehaviour
  def initialize(duck)
    @duck = duck
  end

  def quack
    if duck.class == RubberDuck
      puts "squeek"
    elsif duck.class == DecoyDuck
      puts "I am doing nothing"
    else
      puts("quack")
    end
  end
end

class SwimBehaviour
  def initialize(duck)
    @duck = duck
  end

  def swim
    if duck.class == DecoyDuck
      puts("sink")
    else
      puts("swim")
    end
  end
end

class Duck
    attr_reader :swim_behaviour, :quack_behaviour
  attr_accessor :fly_behaviour    
  def initialize
    @swim_behaviour = SwimBehaviour.new(self).swim
    @fly_behaviour = FlyBehaviour.new(self)
    @quack_behaviour = QuackBehaviour.new(self)
  end

  def fly
    fly_behaviour.fly
  end

  def display
    puts self.class
  end

  def quack
    quack_behaviour.quack
  end

  def swim
    swim_behaviour.swim
  end
end


class RedheadDuck < Duck
end

class MallerdDuck < Duck
end

class RubberDuck < Duck
end

class DecoyDuck < Duck
end
