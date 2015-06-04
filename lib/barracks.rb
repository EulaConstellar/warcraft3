class Barracks
  attr_accessor :footman, :barrack_health, :food, :gold, :lumber

  def initialize
    @gold = 1000
    @food = 80
    @lumber = 500
    @barrack_health = 500
  end

  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def train_footman
    if can_train_footman?
      @gold = (@gold - 135)
      @food = (@food - 2)
      @footman = Footman.new
    end
  end

  def can_train_peasant?
    if gold >= 90 && food >= 5
      true
    else
      false
    end
  end

  def train_peasant
    if can_train_peasant?
      @gold = (@gold - 90)
      @food = (@food - 5)
      @peasant = Peasant.new
    end
  end

  def can_make_siegeengine?
    gold >= 200 && lumber >= 60 && food >= 3
  end

  def make_siegeengine
    if can_make_siegeengine
      @gold = (@gold - 200)
      @lumber = (@lumber - 60)
      @food = (@food - 3)
    end
  end

  def dead?
    @barrack_health == 0
  end

 def damage(attack_power)
    @barrack_health = (@barrack_health - attack_power)
  end
end