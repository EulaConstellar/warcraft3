class Barracks
  attr_accessor :footman

  def initialize
    @gold = 1000
    @food = 80
    @footman
    @peasant
  end

  def can_train_footman?
    if gold >= 135 && food >= 2
      true
    else
      false
    end
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

  def food
    @food
  end

  def gold
    @gold
  end
end