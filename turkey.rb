require_relative "./duck.rb"

class Turkey < Duck
  attr_reader :turkey

  def initialize(turkey)
    @turkey = turkey
  end

  def quack
    turkey.gobble
  end

  def fly
    (0..5).each do |i|
      turkey.fly
    end
  end
end
